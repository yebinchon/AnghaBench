
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
struct TYPE_8__ {void* pa; int * kva; } ;
struct TYPE_7__ {TYPE_4__ addr; } ;
struct TYPE_5__ {void* pa; int * kva; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct bfa_msgq {TYPE_3__ rspq; TYPE_2__ cmdq; } ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_MSGQ_CMDQ_SIZE ;
 scalar_t__ roundup (int ,int ) ;

void
bfa_msgq_memclaim(struct bfa_msgq *msgq, u8 *kva, u64 pa)
{
 msgq->cmdq.addr.kva = kva;
 msgq->cmdq.addr.pa = pa;

 kva += roundup(BFA_MSGQ_CMDQ_SIZE, BFA_DMA_ALIGN_SZ);
 pa += roundup(BFA_MSGQ_CMDQ_SIZE, BFA_DMA_ALIGN_SZ);

 msgq->rspq.addr.kva = kva;
 msgq->rspq.addr.pa = pa;
}
