
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_dev {int dummy; } ;


 int const BIT (int ) ;
 int DP_VERBOSE (struct qed_dev*,int ,char*,int ,int ) ;
 int NETIF_MSG_DRV ;
 int QED_PUT_FILE_DATA ;
 int qed_mcp_nvm_write (struct qed_dev*,int ,int ,char*,int ) ;

__attribute__((used)) static int qed_nvm_flash_image_file_data(struct qed_dev *cdev,
      const u8 **data, bool *check_resp)
{
 u32 offset, len;
 int rc;

 *data += 4;
 len = *((u32 *)(*data));
 *data += 4;
 *check_resp = !!(**data & BIT(0));
 *data += 4;
 offset = *((u32 *)(*data));
 *data += 4;

 DP_VERBOSE(cdev, NETIF_MSG_DRV,
     "About to write File-data: %08x bytes to offset %08x\n",
     len, offset);

 rc = qed_mcp_nvm_write(cdev, QED_PUT_FILE_DATA, offset,
          (char *)(*data), len);
 *data += len;

 return rc;
}
