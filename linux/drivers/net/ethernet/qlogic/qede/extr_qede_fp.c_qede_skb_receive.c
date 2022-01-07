
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {int dummy; } ;
struct qede_fastpath {int napi; } ;
struct qede_dev {int dummy; } ;


 int ETH_P_8021Q ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 int htons (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;

__attribute__((used)) static inline void qede_skb_receive(struct qede_dev *edev,
        struct qede_fastpath *fp,
        struct qede_rx_queue *rxq,
        struct sk_buff *skb, u16 vlan_tag)
{
 if (vlan_tag)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);

 napi_gro_receive(&fp->napi, skb);
}
