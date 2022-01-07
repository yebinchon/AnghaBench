
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; int virt; } ;
struct s5p_mfc_dev {int fw_get_done; int fw_ver; TYPE_3__ fw_buf; TYPE_2__* plat_dev; TYPE_1__* variant; } ;
struct firmware {scalar_t__ size; int data; } ;
typedef enum s5p_mfc_fw_ver { ____Placeholder_s5p_mfc_fw_ver } s5p_mfc_fw_ver ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int * fw_name; } ;


 int EINVAL ;
 int ENOMEM ;
 int MFC_FW_MAX_VERSIONS ;
 int memcpy (int ,int ,scalar_t__) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*) ;
 int release_firmware (struct firmware*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int wmb () ;

int s5p_mfc_load_firmware(struct s5p_mfc_dev *dev)
{
 struct firmware *fw_blob;
 int i, err = -EINVAL;



 mfc_debug_enter();

 if (dev->fw_get_done)
  return 0;

 for (i = MFC_FW_MAX_VERSIONS - 1; i >= 0; i--) {
  if (!dev->variant->fw_name[i])
   continue;
  err = request_firmware((const struct firmware **)&fw_blob,
    dev->variant->fw_name[i], &dev->plat_dev->dev);
  if (!err) {
   dev->fw_ver = (enum s5p_mfc_fw_ver) i;
   break;
  }
 }

 if (err != 0) {
  mfc_err("Firmware is not present in the /lib/firmware directory nor compiled in kernel\n");
  return -EINVAL;
 }
 if (fw_blob->size > dev->fw_buf.size) {
  mfc_err("MFC firmware is too big to be loaded\n");
  release_firmware(fw_blob);
  return -ENOMEM;
 }
 memcpy(dev->fw_buf.virt, fw_blob->data, fw_blob->size);
 wmb();
 dev->fw_get_done = 1;
 release_firmware(fw_blob);
 mfc_debug_leave();
 return 0;
}
