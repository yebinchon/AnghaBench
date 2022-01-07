
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_over_errors; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int * data; int can_id; } ;
struct c_can_priv {int (* write_reg ) (struct c_can_priv*,int ,int) ;} ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int C_CAN_IFACE (int ,int) ;
 int IF_COMM_CONTROL ;
 int IF_MCONT_INTPND ;
 int IF_MCONT_MSGLST ;
 int IF_MCONT_NEWDAT ;
 int MSGCTRL_REG ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int c_can_object_put (struct net_device*,int,int,int ) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int stub1 (struct c_can_priv*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int c_can_handle_lost_msg_obj(struct net_device *dev,
         int iface, int objno, u32 ctrl)
{
 struct net_device_stats *stats = &dev->stats;
 struct c_can_priv *priv = netdev_priv(dev);
 struct can_frame *frame;
 struct sk_buff *skb;

 ctrl &= ~(IF_MCONT_MSGLST | IF_MCONT_INTPND | IF_MCONT_NEWDAT);
 priv->write_reg(priv, C_CAN_IFACE(MSGCTRL_REG, iface), ctrl);
 c_can_object_put(dev, iface, objno, IF_COMM_CONTROL);

 stats->rx_errors++;
 stats->rx_over_errors++;


 skb = alloc_can_err_skb(dev, &frame);
 if (unlikely(!skb))
  return 0;

 frame->can_id |= CAN_ERR_CRTL;
 frame->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

 netif_receive_skb(skb);
 return 1;
}
