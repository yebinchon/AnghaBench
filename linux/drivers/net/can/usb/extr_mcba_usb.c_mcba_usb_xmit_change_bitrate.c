
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcba_usb_msg_change_bitrate {int bitrate; int cmd_id; } ;
struct mcba_usb_msg {int dummy; } ;
struct mcba_priv {int dummy; } ;


 int MBCA_CMD_CHANGE_BIT_RATE ;
 int mcba_usb_xmit_cmd (struct mcba_priv*,struct mcba_usb_msg*) ;
 int put_unaligned_be16 (int ,int *) ;

__attribute__((used)) static void mcba_usb_xmit_change_bitrate(struct mcba_priv *priv, u16 bitrate)
{
 struct mcba_usb_msg_change_bitrate usb_msg = {
  .cmd_id = MBCA_CMD_CHANGE_BIT_RATE
 };

 put_unaligned_be16(bitrate, &usb_msg.bitrate);

 mcba_usb_xmit_cmd(priv, (struct mcba_usb_msg *)&usb_msg);
}
