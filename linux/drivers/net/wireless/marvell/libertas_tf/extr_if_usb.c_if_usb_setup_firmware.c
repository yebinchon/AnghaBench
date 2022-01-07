
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {struct if_usb_card* card; } ;
struct if_usb_card {int boot2_version; } ;
struct TYPE_2__ {int size; } ;
struct cmd_ds_set_boot2_ver {int version; scalar_t__ action; TYPE_1__ hdr; } ;
typedef int b2_cmd ;


 int CMD_SET_BOOT2_VER ;
 int LBTF_DEB_USB ;
 int cpu_to_le16 (int) ;
 int if_usb_submit_rx_urb (struct if_usb_card*) ;
 scalar_t__ lbtf_cmd_with_response (struct lbtf_private*,int ,struct cmd_ds_set_boot2_ver*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_usb (char*) ;

__attribute__((used)) static void if_usb_setup_firmware(struct lbtf_private *priv)
{
 struct if_usb_card *cardp = priv->card;
 struct cmd_ds_set_boot2_ver b2_cmd;

 lbtf_deb_enter(LBTF_DEB_USB);

 if_usb_submit_rx_urb(cardp);
 b2_cmd.hdr.size = cpu_to_le16(sizeof(b2_cmd));
 b2_cmd.action = 0;
 b2_cmd.version = cardp->boot2_version;

 if (lbtf_cmd_with_response(priv, CMD_SET_BOOT2_VER, &b2_cmd))
  lbtf_deb_usb("Setting boot2 version failed\n");

 lbtf_deb_leave(LBTF_DEB_USB);
}
