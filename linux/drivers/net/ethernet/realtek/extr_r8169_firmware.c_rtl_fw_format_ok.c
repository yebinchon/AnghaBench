
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl_fw {int fw_name; int version; struct rtl_fw_phy_action phy_action; struct firmware* fw; } ;
struct fw_info {int version; int fw_len; int fw_start; int magic; } ;
struct firmware {scalar_t__* data; size_t size; } ;
typedef int __le32 ;


 size_t FW_OPCODE_SIZE ;
 int RTL_VER_SIZE ;
 size_t le32_to_cpu (int ) ;
 int strscpy (int ,int ,int ) ;

__attribute__((used)) static bool rtl_fw_format_ok(struct rtl_fw *rtl_fw)
{
 const struct firmware *fw = rtl_fw->fw;
 struct fw_info *fw_info = (struct fw_info *)fw->data;
 struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;

 if (fw->size < FW_OPCODE_SIZE)
  return 0;

 if (!fw_info->magic) {
  size_t i, size, start;
  u8 checksum = 0;

  if (fw->size < sizeof(*fw_info))
   return 0;

  for (i = 0; i < fw->size; i++)
   checksum += fw->data[i];
  if (checksum != 0)
   return 0;

  start = le32_to_cpu(fw_info->fw_start);
  if (start > fw->size)
   return 0;

  size = le32_to_cpu(fw_info->fw_len);
  if (size > (fw->size - start) / FW_OPCODE_SIZE)
   return 0;

  strscpy(rtl_fw->version, fw_info->version, RTL_VER_SIZE);

  pa->code = (__le32 *)(fw->data + start);
  pa->size = size;
 } else {
  if (fw->size % FW_OPCODE_SIZE)
   return 0;

  strscpy(rtl_fw->version, rtl_fw->fw_name, RTL_VER_SIZE);

  pa->code = (__le32 *)fw->data;
  pa->size = fw->size / FW_OPCODE_SIZE;
 }

 return 1;
}
