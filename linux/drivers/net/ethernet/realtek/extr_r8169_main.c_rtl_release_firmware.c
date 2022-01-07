
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int * rtl_fw; } ;


 int kfree (int *) ;
 int rtl_fw_release_firmware (int *) ;

__attribute__((used)) static void rtl_release_firmware(struct rtl8169_private *tp)
{
 if (tp->rtl_fw) {
  rtl_fw_release_firmware(tp->rtl_fw);
  kfree(tp->rtl_fw);
  tp->rtl_fw = ((void*)0);
 }
}
