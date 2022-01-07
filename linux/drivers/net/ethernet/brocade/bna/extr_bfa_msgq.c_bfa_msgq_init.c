
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {void* q_depth; int addr; } ;
struct TYPE_12__ {void* q_depth; int addr; } ;
struct TYPE_10__ {scalar_t__ i2htok; } ;
struct TYPE_17__ {TYPE_1__ mtag; } ;
struct bfi_msgq_cfg_req {TYPE_6__ rspq; TYPE_3__ cmdq; TYPE_8__ mh; } ;
struct TYPE_18__ {int * msg; } ;
struct TYPE_14__ {int pa; } ;
struct TYPE_16__ {int depth; TYPE_5__ addr; } ;
struct TYPE_11__ {int pa; } ;
struct TYPE_13__ {int depth; TYPE_2__ addr; } ;
struct bfa_msgq {TYPE_9__ init_mb; int ioc; TYPE_7__ rspq; TYPE_4__ cmdq; } ;


 int BFI_MC_MSGQ ;
 int BFI_MSGQ_H2I_INIT_REQ ;
 int bfa_dma_be_addr_set (int ,int ) ;
 int bfa_nw_ioc_mbox_queue (int ,TYPE_9__*,int *,int *) ;
 int bfi_h2i_set (TYPE_8__,int ,int ,int ) ;
 void* htons (int ) ;
 int memset (struct bfi_msgq_cfg_req*,int ,int) ;

__attribute__((used)) static void
bfa_msgq_init(void *arg)
{
 struct bfa_msgq *msgq = (struct bfa_msgq *)arg;
 struct bfi_msgq_cfg_req *msgq_cfg =
  (struct bfi_msgq_cfg_req *)&msgq->init_mb.msg[0];

 memset(msgq_cfg, 0, sizeof(struct bfi_msgq_cfg_req));
 bfi_h2i_set(msgq_cfg->mh, BFI_MC_MSGQ, BFI_MSGQ_H2I_INIT_REQ, 0);
 msgq_cfg->mh.mtag.i2htok = 0;

 bfa_dma_be_addr_set(msgq_cfg->cmdq.addr, msgq->cmdq.addr.pa);
 msgq_cfg->cmdq.q_depth = htons(msgq->cmdq.depth);
 bfa_dma_be_addr_set(msgq_cfg->rspq.addr, msgq->rspq.addr.pa);
 msgq_cfg->rspq.q_depth = htons(msgq->rspq.depth);

 bfa_nw_ioc_mbox_queue(msgq->ioc, &msgq->init_mb, ((void*)0), ((void*)0));
}
