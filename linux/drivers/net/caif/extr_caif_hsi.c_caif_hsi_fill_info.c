
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int q_low_mark; int q_high_mark; int tail_align; int head_align; int aggregation_timeout; int inactivity_timeout; } ;
struct cfhsi {TYPE_1__ cfg; } ;


 int EMSGSIZE ;
 int __IFLA_CAIF_HSI_AGGREGATION_TOUT ;
 int __IFLA_CAIF_HSI_HEAD_ALIGN ;
 int __IFLA_CAIF_HSI_INACTIVITY_TOUT ;
 int __IFLA_CAIF_HSI_QHIGH_WATERMARK ;
 int __IFLA_CAIF_HSI_QLOW_WATERMARK ;
 int __IFLA_CAIF_HSI_TAIL_ALIGN ;
 struct cfhsi* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int caif_hsi_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct cfhsi *cfhsi = netdev_priv(dev);

 if (nla_put_u32(skb, __IFLA_CAIF_HSI_INACTIVITY_TOUT,
   cfhsi->cfg.inactivity_timeout) ||
     nla_put_u32(skb, __IFLA_CAIF_HSI_AGGREGATION_TOUT,
   cfhsi->cfg.aggregation_timeout) ||
     nla_put_u32(skb, __IFLA_CAIF_HSI_HEAD_ALIGN,
   cfhsi->cfg.head_align) ||
     nla_put_u32(skb, __IFLA_CAIF_HSI_TAIL_ALIGN,
   cfhsi->cfg.tail_align) ||
     nla_put_u32(skb, __IFLA_CAIF_HSI_QHIGH_WATERMARK,
   cfhsi->cfg.q_high_mark) ||
     nla_put_u32(skb, __IFLA_CAIF_HSI_QLOW_WATERMARK,
   cfhsi->cfg.q_low_mark))
  return -EMSGSIZE;

 return 0;
}
