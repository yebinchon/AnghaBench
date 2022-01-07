
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {scalar_t__ state; } ;
struct ti_hecc_priv {int offload; int ndev; TYPE_1__ can; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int rx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct can_frame {void** data; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 scalar_t__ CAN_STATE_BUS_OFF ;
 int HECC_CANLNT ;
 int HECC_CANREC ;
 int HECC_CANTEC ;
 struct sk_buff* alloc_can_err_skb (int ,struct can_frame**) ;
 int can_change_state (int ,struct can_frame*,int,int) ;
 int can_rx_offload_queue_sorted (int *,struct sk_buff*,void*) ;
 void* hecc_read (struct ti_hecc_priv*,int ) ;
 scalar_t__ max (int,int) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ti_hecc_change_state(struct net_device *ndev,
     enum can_state rx_state,
     enum can_state tx_state)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);
 struct can_frame *cf;
 struct sk_buff *skb;
 u32 timestamp;
 int err;

 skb = alloc_can_err_skb(priv->ndev, &cf);
 if (unlikely(!skb)) {
  priv->can.state = max(tx_state, rx_state);
  return;
 }

 can_change_state(priv->ndev, cf, tx_state, rx_state);

 if (max(tx_state, rx_state) != CAN_STATE_BUS_OFF) {
  cf->data[6] = hecc_read(priv, HECC_CANTEC);
  cf->data[7] = hecc_read(priv, HECC_CANREC);
 }

 timestamp = hecc_read(priv, HECC_CANLNT);
 err = can_rx_offload_queue_sorted(&priv->offload, skb, timestamp);
 if (err)
  ndev->stats.rx_fifo_errors++;
}
