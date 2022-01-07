
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int skb_list; } ;
struct TYPE_3__ {scalar_t__ txavail; } ;
struct dma_info {TYPE_2__ ampdu_session; int txout; int txin; scalar_t__ ntxd; TYPE_1__ dma; } ;


 scalar_t__ ntxdactive (struct dma_info*,int ,int ) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static void dma_update_txavail(struct dma_info *di)
{




 di->dma.txavail = di->ntxd - ntxdactive(di, di->txin, di->txout) -
     skb_queue_len(&di->ampdu_session.skb_list) - 1;
}
