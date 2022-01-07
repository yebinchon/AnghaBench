
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int dev; scalar_t__ fw_name; int mac_mcu_read; int mac_mcu_write; int phy_read; int phy_write; } ;
struct rtl8169_private {struct rtl_fw* rtl_fw; scalar_t__ fw_name; int dev; } ;


 int GFP_KERNEL ;
 int ifup ;
 int kfree (struct rtl_fw*) ;
 struct rtl_fw* kzalloc (int,int ) ;
 int mac_mcu_read ;
 int mac_mcu_write ;
 int netif_warn (struct rtl8169_private*,int ,int ,char*) ;
 scalar_t__ rtl_fw_request_firmware (struct rtl_fw*) ;
 int rtl_readphy ;
 int rtl_writephy ;
 int tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_request_firmware(struct rtl8169_private *tp)
{
 struct rtl_fw *rtl_fw;


 if (tp->rtl_fw || !tp->fw_name)
  return;

 rtl_fw = kzalloc(sizeof(*rtl_fw), GFP_KERNEL);
 if (!rtl_fw) {
  netif_warn(tp, ifup, tp->dev, "Unable to load firmware, out of memory\n");
  return;
 }

 rtl_fw->phy_write = rtl_writephy;
 rtl_fw->phy_read = rtl_readphy;
 rtl_fw->mac_mcu_write = mac_mcu_write;
 rtl_fw->mac_mcu_read = mac_mcu_read;
 rtl_fw->fw_name = tp->fw_name;
 rtl_fw->dev = tp_to_dev(tp);

 if (rtl_fw_request_firmware(rtl_fw))
  kfree(rtl_fw);
 else
  tp->rtl_fw = rtl_fw;
}
