
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_proto; } ;
struct brcmf_if {TYPE_2__* ndev; int pend_8021x_wait; int pend_8021x_cnt; } ;
struct TYPE_3__ {int tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 scalar_t__ ETH_P_PAE ;
 int atomic_dec (int *) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void brcmf_txfinalize(struct brcmf_if *ifp, struct sk_buff *txp, bool success)
{
 struct ethhdr *eh;
 u16 type;

 eh = (struct ethhdr *)(txp->data);
 type = ntohs(eh->h_proto);

 if (type == ETH_P_PAE) {
  atomic_dec(&ifp->pend_8021x_cnt);
  if (waitqueue_active(&ifp->pend_8021x_wait))
   wake_up(&ifp->pend_8021x_wait);
 }

 if (!success)
  ifp->ndev->stats.tx_errors++;

 brcmu_pkt_buf_free_skb(txp);
}
