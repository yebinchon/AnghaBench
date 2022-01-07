
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcba_usb_msg_ka_usb {int dummy; } ;
struct mcba_usb_msg_ka_can {int dummy; } ;
struct mcba_usb_msg_can {int dummy; } ;
struct mcba_usb_msg {int cmd_id; } ;
struct mcba_priv {int netdev; } ;







 int mcba_usb_process_can (struct mcba_priv*,struct mcba_usb_msg_can*) ;
 int mcba_usb_process_ka_can (struct mcba_priv*,struct mcba_usb_msg_ka_can*) ;
 int mcba_usb_process_ka_usb (struct mcba_priv*,struct mcba_usb_msg_ka_usb*) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static void mcba_usb_process_rx(struct mcba_priv *priv,
    struct mcba_usb_msg *msg)
{
 switch (msg->cmd_id) {
 case 132:
  mcba_usb_process_ka_can(priv,
     (struct mcba_usb_msg_ka_can *)msg);
  break;

 case 131:
  mcba_usb_process_ka_usb(priv,
     (struct mcba_usb_msg_ka_usb *)msg);
  break;

 case 129:
  mcba_usb_process_can(priv, (struct mcba_usb_msg_can *)msg);
  break;

 case 130:



  break;

 case 128:

  break;

 default:
  netdev_warn(priv->netdev, "Unsupported msg (0x%hhX)",
       msg->cmd_id);
  break;
 }
}
