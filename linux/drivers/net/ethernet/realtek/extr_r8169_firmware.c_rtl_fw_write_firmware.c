
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl_fw {int (* phy_read ) (struct rtl8169_private*,int) ;int (* mac_mcu_read ) (struct rtl8169_private*,int) ;int (* mac_mcu_write ) (struct rtl8169_private*,int,int) ;int (* phy_write ) (struct rtl8169_private*,int,int) ;struct rtl_fw_phy_action phy_action; } ;
struct rtl8169_private {int dummy; } ;
typedef int (* rtl_fw_write_t ) (struct rtl8169_private*,int,int) ;
typedef int (* rtl_fw_read_t ) (struct rtl8169_private*,int) ;
typedef enum rtl_fw_opcode { ____Placeholder_rtl_fw_opcode } rtl_fw_opcode ;
 int le32_to_cpu (int ) ;
 int mdelay (int) ;

void rtl_fw_write_firmware(struct rtl8169_private *tp, struct rtl_fw *rtl_fw)
{
 struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;
 rtl_fw_write_t fw_write = rtl_fw->phy_write;
 rtl_fw_read_t fw_read = rtl_fw->phy_read;
 int predata = 0, count = 0;
 size_t index;

 for (index = 0; index < pa->size; index++) {
  u32 action = le32_to_cpu(pa->code[index]);
  u32 data = action & 0x0000ffff;
  u32 regno = (action & 0x0fff0000) >> 16;
  enum rtl_fw_opcode opcode = action >> 28;

  if (!action)
   break;

  switch (opcode) {
  case 132:
   predata = fw_read(tp, regno);
   count++;
   break;
  case 135:
   predata |= data;
   break;
  case 136:
   predata &= data;
   break;
  case 140:
   index -= (regno + 1);
   break;
  case 133:
   if (data == 0) {
    fw_write = rtl_fw->phy_write;
    fw_read = rtl_fw->phy_read;
   } else if (data == 1) {
    fw_write = rtl_fw->mac_mcu_write;
    fw_read = rtl_fw->mac_mcu_read;
   }

   break;
  case 139:
   count = 0;
   break;
  case 129:
   fw_write(tp, regno, data);
   break;
  case 131:
   if (count == data)
    index++;
   break;
  case 138:
   if (predata == data)
    index += regno;
   break;
  case 137:
   if (predata != data)
    index += regno;
   break;
  case 128:
   fw_write(tp, regno, predata);
   break;
  case 130:
   index += regno;
   break;
  case 134:
   mdelay(data);
   break;
  }
 }
}
