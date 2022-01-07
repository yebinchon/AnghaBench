
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct urb {int actual_length; int status; struct if_usb_card* context; } ;
struct sk_buff {int * data; } ;
struct lbtf_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct lbtf_private* priv; struct sk_buff* rx_skb; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;





 int LBTF_DEB_USB ;
 int LBTF_EVENT_BCN_SENT ;
 int if_usb_submit_rx_urb (struct if_usb_card*) ;
 int kfree_skb (struct sk_buff*) ;
 int lbtf_bcn_sent (struct lbtf_private*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_usbd (int *,char*,int,...) ;
 int lbtf_send_tx_feedback (struct lbtf_private*,int,int) ;
 int le32_to_cpu (int ) ;
 int process_cmdrequest (int,int *,struct sk_buff*,struct if_usb_card*,struct lbtf_private*) ;
 int process_cmdtypedata (int,struct sk_buff*,struct if_usb_card*,struct lbtf_private*) ;

__attribute__((used)) static void if_usb_receive(struct urb *urb)
{
 struct if_usb_card *cardp = urb->context;
 struct sk_buff *skb = cardp->rx_skb;
 struct lbtf_private *priv = cardp->priv;
 int recvlength = urb->actual_length;
 uint8_t *recvbuff = ((void*)0);
 uint32_t recvtype = 0;
 __le32 *pkt = (__le32 *) skb->data;

 lbtf_deb_enter(LBTF_DEB_USB);

 if (recvlength) {
  if (urb->status) {
   lbtf_deb_usbd(&cardp->udev->dev, "RX URB failed: %d\n",
         urb->status);
   kfree_skb(skb);
   goto setup_for_next;
  }

  recvbuff = skb->data;
  recvtype = le32_to_cpu(pkt[0]);
  lbtf_deb_usbd(&cardp->udev->dev,
       "Recv length = 0x%x, Recv type = 0x%X\n",
       recvlength, recvtype);
 } else if (urb->status) {
  kfree_skb(skb);
  lbtf_deb_leave(LBTF_DEB_USB);
  return;
 }

 switch (recvtype) {
 case 130:
  process_cmdtypedata(recvlength, skb, cardp, priv);
  break;

 case 128:
  process_cmdrequest(recvlength, recvbuff, skb, cardp, priv);
  break;

 case 129:
 {

  u32 event_cause = le32_to_cpu(pkt[1]);
  lbtf_deb_usbd(&cardp->udev->dev, "**EVENT** 0x%X\n",
   event_cause);


  if (event_cause & 0xffff0000) {
   u16 tmp;
   u8 retrycnt;
   u8 failure;

   tmp = event_cause >> 16;
   retrycnt = tmp & 0x00ff;
   failure = (tmp & 0xff00) >> 8;
   lbtf_send_tx_feedback(priv, retrycnt, failure);
  } else if (event_cause == LBTF_EVENT_BCN_SENT)
   lbtf_bcn_sent(priv);
  else
   lbtf_deb_usbd(&cardp->udev->dev,
          "Unsupported notification %d received\n",
          event_cause);
  kfree_skb(skb);
  break;
 }
 default:
  lbtf_deb_usbd(&cardp->udev->dev,
   "libertastf: unknown command type 0x%X\n", recvtype);
  kfree_skb(skb);
  break;
 }

setup_for_next:
 if_usb_submit_rx_urb(cardp);
 lbtf_deb_leave(LBTF_DEB_USB);
}
