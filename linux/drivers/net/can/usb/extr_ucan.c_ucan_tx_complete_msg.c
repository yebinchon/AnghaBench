
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ucan_urb_context {int dlc; } ;
struct TYPE_8__ {size_t tx_fifo; } ;
struct ucan_priv {int echo_skb_lock; TYPE_5__* netdev; struct ucan_urb_context* context_array; TYPE_1__ device_info; } ;
struct TYPE_10__ {TYPE_2__* can_tx_complete_msg; } ;
struct ucan_message_in {TYPE_3__ msg; int len; } ;
struct TYPE_11__ {int tx_dropped; int tx_bytes; int tx_packets; int tx_errors; } ;
struct TYPE_12__ {TYPE_4__ stats; } ;
struct TYPE_9__ {size_t echo_index; int flags; } ;


 size_t READ_ONCE (int ) ;
 int UCAN_IN_HDR_SIZE ;
 int UCAN_TX_COMPLETE_SUCCESS ;
 int can_free_echo_skb (TYPE_5__*,size_t) ;
 int can_get_echo_skb (TYPE_5__*,size_t) ;
 int le16_to_cpu (int ) ;
 int netdev_err (TYPE_5__*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucan_release_context (struct ucan_priv*,struct ucan_urb_context*) ;

__attribute__((used)) static void ucan_tx_complete_msg(struct ucan_priv *up,
     struct ucan_message_in *m)
{
 unsigned long flags;
 u16 count, i;
 u8 echo_index, dlc;
 u16 len = le16_to_cpu(m->len);

 struct ucan_urb_context *context;

 if (len < UCAN_IN_HDR_SIZE || (len % 2 != 0)) {
  netdev_err(up->netdev, "invalid tx complete length\n");
  return;
 }

 count = (len - UCAN_IN_HDR_SIZE) / 2;
 for (i = 0; i < count; i++) {

  echo_index = m->msg.can_tx_complete_msg[i].echo_index;
  if (echo_index >= up->device_info.tx_fifo) {
   up->netdev->stats.tx_errors++;
   netdev_err(up->netdev,
       "invalid echo_index %d received\n",
       echo_index);
   continue;
  }


  context = &up->context_array[echo_index];
  dlc = READ_ONCE(context->dlc);




  if (!ucan_release_context(up, context))
   continue;

  spin_lock_irqsave(&up->echo_skb_lock, flags);
  if (m->msg.can_tx_complete_msg[i].flags &
      UCAN_TX_COMPLETE_SUCCESS) {

   up->netdev->stats.tx_packets++;
   up->netdev->stats.tx_bytes += dlc;
   can_get_echo_skb(up->netdev, echo_index);
  } else {
   up->netdev->stats.tx_dropped++;
   can_free_echo_skb(up->netdev, echo_index);
  }
  spin_unlock_irqrestore(&up->echo_skb_lock, flags);
 }
}
