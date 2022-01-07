
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ rtl_fw; } ;


 int rtl_fw_write_firmware (struct rtl8169_private*,scalar_t__) ;

__attribute__((used)) static void rtl_apply_firmware(struct rtl8169_private *tp)
{

 if (tp->rtl_fw)
  rtl_fw_write_firmware(tp, tp->rtl_fw);
}
