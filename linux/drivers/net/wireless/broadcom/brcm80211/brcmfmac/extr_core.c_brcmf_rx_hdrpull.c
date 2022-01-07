
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* ndev; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ENODATA ;
 int brcmf_proto_hdrpull (struct brcmf_pub*,int,struct sk_buff*,struct brcmf_if**) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;

__attribute__((used)) static int brcmf_rx_hdrpull(struct brcmf_pub *drvr, struct sk_buff *skb,
       struct brcmf_if **ifp)
{
 int ret;


 ret = brcmf_proto_hdrpull(drvr, 1, skb, ifp);

 if (ret || !(*ifp) || !(*ifp)->ndev) {
  if (ret != -ENODATA && *ifp)
   (*ifp)->ndev->stats.rx_errors++;
  brcmu_pkt_buf_free_skb(skb);
  return -ENODATA;
 }

 skb->protocol = eth_type_trans(skb, (*ifp)->ndev);
 return 0;
}
