
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl_fw {int dev; struct rtl_fw_phy_action phy_action; } ;
 int dev_err (int ,char*,...) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool rtl_fw_data_ok(struct rtl_fw *rtl_fw)
{
 struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;
 size_t index;

 for (index = 0; index < pa->size; index++) {
  u32 action = le32_to_cpu(pa->code[index]);
  u32 regno = (action & 0x0fff0000) >> 16;

  switch (action >> 28) {
  case 132:
  case 135:
  case 136:
  case 133:
  case 139:
  case 129:
  case 128:
  case 134:
   break;

  case 140:
   if (regno > index)
    goto out;
   break;
  case 131:
   if (index + 2 >= pa->size)
    goto out;
   break;
  case 138:
  case 137:
  case 130:
   if (index + 1 + regno >= pa->size)
    goto out;
   break;

  default:
   dev_err(rtl_fw->dev, "Invalid action 0x%08x\n", action);
   return 0;
  }
 }

 return 1;
out:
 dev_err(rtl_fw->dev, "Out of range of firmware\n");
 return 0;
}
