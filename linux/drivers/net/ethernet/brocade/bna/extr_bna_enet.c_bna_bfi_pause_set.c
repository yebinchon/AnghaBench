
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rx_pause; int tx_pause; } ;
struct TYPE_7__ {int num_entries; } ;
struct bfi_enet_set_pause_req {TYPE_3__ mh; int rx_pause; int tx_pause; } ;
struct bna_enet {int msgq_cmd; TYPE_2__* bna; TYPE_1__ pause_config; struct bfi_enet_set_pause_req pause_req; } ;
struct TYPE_6__ {int msgq; } ;


 int BFI_ENET_H2I_SET_PAUSE_REQ ;
 int BFI_MC_ENET ;
 int bfa_msgq_cmd_post (int *,int *) ;
 int bfa_msgq_cmd_set (int *,int *,int *,int,TYPE_3__*) ;
 int bfi_msgq_mhdr_set (TYPE_3__,int ,int ,int ,int ) ;
 int bfi_msgq_num_cmd_entries (int) ;
 int htons (int ) ;

__attribute__((used)) static void
bna_bfi_pause_set(struct bna_enet *enet)
{
 struct bfi_enet_set_pause_req *pause_req = &enet->pause_req;

 bfi_msgq_mhdr_set(pause_req->mh, BFI_MC_ENET,
  BFI_ENET_H2I_SET_PAUSE_REQ, 0, 0);
 pause_req->mh.num_entries = htons(
 bfi_msgq_num_cmd_entries(sizeof(struct bfi_enet_set_pause_req)));
 pause_req->tx_pause = enet->pause_config.tx_pause;
 pause_req->rx_pause = enet->pause_config.rx_pause;

 bfa_msgq_cmd_set(&enet->msgq_cmd, ((void*)0), ((void*)0),
  sizeof(struct bfi_enet_set_pause_req), &pause_req->mh);
 bfa_msgq_cmd_post(&enet->bna->msgq, &enet->msgq_cmd);
}
