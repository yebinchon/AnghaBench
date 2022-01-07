
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_dev {int dummy; } ;
struct firmware {int size; } ;


 int DP_ERR (struct qed_dev*,char*,scalar_t__,...) ;
 int EINVAL ;
 scalar_t__ QED_NVM_FLASH_CMD_NVM_MAX ;
 scalar_t__ QED_NVM_SIGNATURE ;

__attribute__((used)) static int qed_nvm_flash_image_validate(struct qed_dev *cdev,
     const struct firmware *image,
     const u8 **data)
{
 u32 signature, len;


 if (image->size < 12) {
  DP_ERR(cdev, "Image is too short [%08x]\n", (u32)image->size);
  return -EINVAL;
 }


 signature = *((u32 *)(*data));
 if (signature != QED_NVM_SIGNATURE) {
  DP_ERR(cdev, "Wrong signature '%08x'\n", signature);
  return -EINVAL;
 }

 *data += 4;

 len = *((u32 *)(*data));
 if (len != image->size) {
  DP_ERR(cdev, "Size mismatch: internal = %08x image = %08x\n",
         len, (u32)image->size);
  return -EINVAL;
 }

 *data += 4;

 if (*((u16 *)(*data)) >= QED_NVM_FLASH_CMD_NVM_MAX) {
  DP_ERR(cdev, "File contains unsupported commands [Need %04x]\n",
         *((u16 *)(*data)));
  return -EINVAL;
 }

 *data += 4;

 return 0;
}
