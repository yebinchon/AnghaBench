
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct firmware {int size; int * data; } ;
struct TYPE_2__ {int dev; } ;


 int DP_ERR (struct qed_dev*,char*,...) ;
 int DP_VERBOSE (struct qed_dev*,int ,char*,char const*,int *,int) ;
 int EINVAL ;
 int FW_MSG_CODE_MASK ;




 int NETIF_MSG_DRV ;




 scalar_t__ qed_mcp_nvm_resp (struct qed_dev*,int *) ;
 int qed_nvm_flash_cfg_write (struct qed_dev*,int const**) ;
 int qed_nvm_flash_image_access (struct qed_dev*,int const**,int*) ;
 int qed_nvm_flash_image_file_data (struct qed_dev*,int const**,int*) ;
 int qed_nvm_flash_image_file_start (struct qed_dev*,int const**,int*) ;
 int qed_nvm_flash_image_validate (struct qed_dev*,struct firmware const*,int const**) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int qed_nvm_flash(struct qed_dev *cdev, const char *name)
{
 const struct firmware *image;
 const u8 *data, *data_end;
 u32 cmd_type;
 int rc;

 rc = request_firmware(&image, name, &cdev->pdev->dev);
 if (rc) {
  DP_ERR(cdev, "Failed to find '%s'\n", name);
  return rc;
 }

 DP_VERBOSE(cdev, NETIF_MSG_DRV,
     "Flashing '%s' - firmware's data at %p, size is %08x\n",
     name, image->data, (u32)image->size);
 data = image->data;
 data_end = data + image->size;

 rc = qed_nvm_flash_image_validate(cdev, image, &data);
 if (rc)
  goto exit;

 while (data < data_end) {
  bool check_resp = 0;


  cmd_type = *((u32 *)data);
  switch (cmd_type) {
  case 131:
   rc = qed_nvm_flash_image_file_data(cdev, &data,
          &check_resp);
   break;
  case 130:
   rc = qed_nvm_flash_image_file_start(cdev, &data,
           &check_resp);
   break;
  case 128:
   rc = qed_nvm_flash_image_access(cdev, &data,
       &check_resp);
   break;
  case 129:
   rc = qed_nvm_flash_cfg_write(cdev, &data);
   break;
  default:
   DP_ERR(cdev, "Unknown command %08x\n", cmd_type);
   rc = -EINVAL;
   goto exit;
  }

  if (rc) {
   DP_ERR(cdev, "Command %08x failed\n", cmd_type);
   goto exit;
  }


  if (check_resp) {
   u32 mcp_response = 0;

   if (qed_mcp_nvm_resp(cdev, (u8 *)&mcp_response)) {
    DP_ERR(cdev, "Failed getting MCP response\n");
    rc = -EINVAL;
    goto exit;
   }

   switch (mcp_response & FW_MSG_CODE_MASK) {
   case 133:
   case 135:
   case 134:
   case 132:
    break;
   default:
    DP_ERR(cdev, "MFW returns error: %08x\n",
           mcp_response);
    rc = -EINVAL;
    goto exit;
   }
  }
 }

exit:
 release_firmware(image);

 return rc;
}
