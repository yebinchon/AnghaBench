
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct bnx2x_fastpath {int napi; int rx_queue; } ;
struct bnx2x {int dev; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;




 int be16_to_cpu (int ) ;
 int bnx2x_gro_csum (struct bnx2x*,struct sk_buff*,int ) ;
 int bnx2x_gro_ip_csum ;
 int bnx2x_gro_ipv6_csum ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netdev_WARN_ONCE (int ,char*,int) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void bnx2x_gro_receive(struct bnx2x *bp, struct bnx2x_fastpath *fp,
          struct sk_buff *skb)
{
 skb_record_rx_queue(skb, fp->rx_queue);
 napi_gro_receive(&fp->napi, skb);
}
