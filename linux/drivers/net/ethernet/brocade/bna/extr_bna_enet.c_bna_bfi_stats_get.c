
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {void* num_entries; } ;
struct TYPE_12__ {int addr_lo; int addr_hi; } ;
struct TYPE_13__ {TYPE_3__ a32; } ;
struct bfi_enet_stats_req {TYPE_8__ mh; TYPE_4__ host_buffer; void* rx_enet_mask; void* tx_enet_mask; void* stats_mask; } ;
struct TYPE_16__ {int stats_get_busy; int stats_get_cmd; struct bfi_enet_stats_req stats_get; } ;
struct TYPE_14__ {int lsb; int msb; } ;
struct TYPE_15__ {TYPE_5__ hw_stats_dma; } ;
struct TYPE_11__ {int rid_mask; } ;
struct TYPE_10__ {int rid_mask; } ;
struct bna {TYPE_7__ stats_mod; int msgq; TYPE_6__ stats; TYPE_2__ rx_mod; TYPE_1__ tx_mod; } ;


 int BFI_ENET_H2I_STATS_GET_REQ ;
 int BFI_ENET_STATS_ALL ;
 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_8__*) ;
 int bfi_msgq_mhdr_set (TYPE_8__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 void* htonl (int ) ;
 void* htons (int ) ;

__attribute__((used)) static void
bna_bfi_stats_get(struct bna *bna)
{
 struct bfi_enet_stats_req *stats_req = &bna->stats_mod.stats_get;

 bna->stats_mod.stats_get_busy = 1;

 bfi_msgq_mhdr_set(stats_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_STATS_GET_REQ, 0, 0);
 stats_req->mh.num_entries = htons(
  bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_stats_req)));
 stats_req->stats_mask = htons(BFI_ENET_STATS_ALL);
 stats_req->tx_enet_mask = htonl(bna->tx_mod.rid_mask);
 stats_req->rx_enet_mask = htonl(bna->rx_mod.rid_mask);
 stats_req->host_buffer.a32.addr_hi = bna->stats.hw_stats_dma.msb;
 stats_req->host_buffer.a32.addr_lo = bna->stats.hw_stats_dma.lsb;

 bfa_msgq_cmd_set(&bna->stats_mod.stats_get_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_stats_req), &stats_req->mh);
 bfa_msgq_cmd_post(&bna->msgq, &bna->stats_mod.stats_get_cmd);
}
