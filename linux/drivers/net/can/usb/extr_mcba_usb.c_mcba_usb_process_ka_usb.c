
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcba_usb_msg_ka_usb {scalar_t__ termination_state; int soft_ver_minor; int soft_ver_major; } ;
struct TYPE_2__ {int termination; } ;
struct mcba_priv {int usb_ka_first_pass; TYPE_1__ can; int netdev; } ;


 int MCBA_TERMINATION_DISABLED ;
 int MCBA_TERMINATION_ENABLED ;
 int netdev_info (int ,char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mcba_usb_process_ka_usb(struct mcba_priv *priv,
        struct mcba_usb_msg_ka_usb *msg)
{
 if (unlikely(priv->usb_ka_first_pass)) {
  netdev_info(priv->netdev, "PIC USB version %hhu.%hhu\n",
       msg->soft_ver_major, msg->soft_ver_minor);

  priv->usb_ka_first_pass = 0;
 }

 if (msg->termination_state)
  priv->can.termination = MCBA_TERMINATION_ENABLED;
 else
  priv->can.termination = MCBA_TERMINATION_DISABLED;
}
