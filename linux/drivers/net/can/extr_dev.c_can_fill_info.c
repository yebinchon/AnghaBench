
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_ctrlmode {scalar_t__ bitrate; int flags; } ;
struct can_priv {int state; int restart_ms; int termination_const_cnt; int bitrate_const_cnt; int data_bitrate_const_cnt; struct can_ctrlmode bitrate_max; struct can_ctrlmode* data_bitrate_const; struct can_ctrlmode* bitrate_const; struct can_ctrlmode* termination_const; int termination; struct can_ctrlmode* data_bittiming_const; struct can_ctrlmode data_bittiming; int (* do_get_berr_counter ) (struct net_device const*,struct can_ctrlmode*) ;struct can_ctrlmode clock; struct can_ctrlmode* bittiming_const; struct can_ctrlmode bittiming; int (* do_get_state ) (struct net_device const*,int*) ;int ctrlmode; } ;
struct can_berr_counter {scalar_t__ bitrate; int flags; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;
typedef int cm ;
typedef int bec ;


 int EMSGSIZE ;
 int IFLA_CAN_BERR_COUNTER ;
 int IFLA_CAN_BITRATE_CONST ;
 int IFLA_CAN_BITRATE_MAX ;
 int IFLA_CAN_BITTIMING ;
 int IFLA_CAN_BITTIMING_CONST ;
 int IFLA_CAN_CLOCK ;
 int IFLA_CAN_CTRLMODE ;
 int IFLA_CAN_DATA_BITRATE_CONST ;
 int IFLA_CAN_DATA_BITTIMING ;
 int IFLA_CAN_DATA_BITTIMING_CONST ;
 int IFLA_CAN_RESTART_MS ;
 int IFLA_CAN_STATE ;
 int IFLA_CAN_TERMINATION ;
 int IFLA_CAN_TERMINATION_CONST ;
 struct can_priv* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct can_ctrlmode*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int stub1 (struct net_device const*,int*) ;
 int stub2 (struct net_device const*,struct can_ctrlmode*) ;

__attribute__((used)) static int can_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);
 struct can_ctrlmode cm = {.flags = priv->ctrlmode};
 struct can_berr_counter bec;
 enum can_state state = priv->state;

 if (priv->do_get_state)
  priv->do_get_state(dev, &state);

 if ((priv->bittiming.bitrate &&
      nla_put(skb, IFLA_CAN_BITTIMING,
       sizeof(priv->bittiming), &priv->bittiming)) ||

     (priv->bittiming_const &&
      nla_put(skb, IFLA_CAN_BITTIMING_CONST,
       sizeof(*priv->bittiming_const), priv->bittiming_const)) ||

     nla_put(skb, IFLA_CAN_CLOCK, sizeof(priv->clock), &priv->clock) ||
     nla_put_u32(skb, IFLA_CAN_STATE, state) ||
     nla_put(skb, IFLA_CAN_CTRLMODE, sizeof(cm), &cm) ||
     nla_put_u32(skb, IFLA_CAN_RESTART_MS, priv->restart_ms) ||

     (priv->do_get_berr_counter &&
      !priv->do_get_berr_counter(dev, &bec) &&
      nla_put(skb, IFLA_CAN_BERR_COUNTER, sizeof(bec), &bec)) ||

     (priv->data_bittiming.bitrate &&
      nla_put(skb, IFLA_CAN_DATA_BITTIMING,
       sizeof(priv->data_bittiming), &priv->data_bittiming)) ||

     (priv->data_bittiming_const &&
      nla_put(skb, IFLA_CAN_DATA_BITTIMING_CONST,
       sizeof(*priv->data_bittiming_const),
       priv->data_bittiming_const)) ||

     (priv->termination_const &&
      (nla_put_u16(skb, IFLA_CAN_TERMINATION, priv->termination) ||
       nla_put(skb, IFLA_CAN_TERMINATION_CONST,
        sizeof(*priv->termination_const) *
        priv->termination_const_cnt,
        priv->termination_const))) ||

     (priv->bitrate_const &&
      nla_put(skb, IFLA_CAN_BITRATE_CONST,
       sizeof(*priv->bitrate_const) *
       priv->bitrate_const_cnt,
       priv->bitrate_const)) ||

     (priv->data_bitrate_const &&
      nla_put(skb, IFLA_CAN_DATA_BITRATE_CONST,
       sizeof(*priv->data_bitrate_const) *
       priv->data_bitrate_const_cnt,
       priv->data_bitrate_const)) ||

     (nla_put(skb, IFLA_CAN_BITRATE_MAX,
       sizeof(priv->bitrate_max),
       &priv->bitrate_max))
     )

  return -EMSGSIZE;

 return 0;
}
