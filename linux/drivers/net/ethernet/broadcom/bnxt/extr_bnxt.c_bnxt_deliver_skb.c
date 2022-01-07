
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ dev; } ;
struct bnxt_napi {int napi; int index; } ;
struct bnxt {scalar_t__ dev; } ;


 int bnxt_vf_rep_rx (struct bnxt*,struct sk_buff*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static void bnxt_deliver_skb(struct bnxt *bp, struct bnxt_napi *bnapi,
        struct sk_buff *skb)
{
 if (skb->dev != bp->dev) {

  bnxt_vf_rep_rx(bp, skb);
  return;
 }
 skb_record_rx_queue(skb, bnapi->index);
 napi_gro_receive(&bnapi->napi, skb);
}
