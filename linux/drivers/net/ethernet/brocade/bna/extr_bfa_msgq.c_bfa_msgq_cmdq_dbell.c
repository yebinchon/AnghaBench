
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cmdq_pi; } ;
struct TYPE_6__ {scalar_t__ i2htok; } ;
struct TYPE_9__ {TYPE_1__ mtag; } ;
struct bfi_msgq_h2i_db {TYPE_2__ idx; TYPE_4__ mh; } ;
struct TYPE_10__ {int * msg; } ;
struct bfa_msgq_cmdq {TYPE_5__ dbell_mb; TYPE_3__* msgq; int producer_index; } ;
struct TYPE_8__ {int ioc; } ;


 int BFI_MC_MSGQ ;
 int BFI_MSGQ_H2I_DOORBELL_PI ;
 int bfa_msgq_cmdq_dbell_ready (struct bfa_msgq_cmdq*) ;
 int bfa_nw_ioc_mbox_queue (int ,TYPE_5__*,int (*) (struct bfa_msgq_cmdq*),struct bfa_msgq_cmdq*) ;
 int bfi_h2i_set (TYPE_4__,int ,int ,int ) ;
 int htons (int ) ;
 int memset (struct bfi_msgq_h2i_db*,int ,int) ;

__attribute__((used)) static void
bfa_msgq_cmdq_dbell(struct bfa_msgq_cmdq *cmdq)
{
 struct bfi_msgq_h2i_db *dbell =
  (struct bfi_msgq_h2i_db *)(&cmdq->dbell_mb.msg[0]);

 memset(dbell, 0, sizeof(struct bfi_msgq_h2i_db));
 bfi_h2i_set(dbell->mh, BFI_MC_MSGQ, BFI_MSGQ_H2I_DOORBELL_PI, 0);
 dbell->mh.mtag.i2htok = 0;
 dbell->idx.cmdq_pi = htons(cmdq->producer_index);

 if (!bfa_nw_ioc_mbox_queue(cmdq->msgq->ioc, &cmdq->dbell_mb,
    bfa_msgq_cmdq_dbell_ready, cmdq)) {
  bfa_msgq_cmdq_dbell_ready(cmdq);
 }
}
