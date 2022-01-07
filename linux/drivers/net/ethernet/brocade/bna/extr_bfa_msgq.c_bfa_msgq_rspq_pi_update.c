
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct bfi_msgq_mhdr {int msg_class; int num_entries; } ;
struct TYPE_4__ {int rspq_pi; } ;
struct bfi_msgq_i2h_db {TYPE_1__ idx; } ;
struct bfi_mbmsg {int dummy; } ;
struct TYPE_5__ {scalar_t__ kva; } ;
struct bfa_msgq_rspq {int producer_index; int consumer_index; int depth; TYPE_3__* rsphdlr; TYPE_2__ addr; } ;
struct TYPE_6__ {int cbarg; int (* cbfn ) (int ,struct bfi_msgq_mhdr*) ;} ;


 int BFA_MSGQ_INDX_ADD (int,int,int ) ;
 int BFI_MC_MAX ;
 int BFI_MSGQ_RSP_ENTRY_SIZE ;
 int RSPQ_E_RESP ;
 int bfa_fsm_send_event (struct bfa_msgq_rspq*,int ) ;
 void* ntohs (int ) ;
 int stub1 (int ,struct bfi_msgq_mhdr*) ;

__attribute__((used)) static void
bfa_msgq_rspq_pi_update(struct bfa_msgq_rspq *rspq, struct bfi_mbmsg *mb)
{
 struct bfi_msgq_i2h_db *dbell = (struct bfi_msgq_i2h_db *)mb;
 struct bfi_msgq_mhdr *msghdr;
 int num_entries;
 int mc;
 u8 *rspq_qe;

 rspq->producer_index = ntohs(dbell->idx.rspq_pi);

 while (rspq->consumer_index != rspq->producer_index) {
  rspq_qe = (u8 *)rspq->addr.kva;
  rspq_qe += (rspq->consumer_index * BFI_MSGQ_RSP_ENTRY_SIZE);
  msghdr = (struct bfi_msgq_mhdr *)rspq_qe;

  mc = msghdr->msg_class;
  num_entries = ntohs(msghdr->num_entries);

  if ((mc >= BFI_MC_MAX) || (rspq->rsphdlr[mc].cbfn == ((void*)0)))
   break;

  (rspq->rsphdlr[mc].cbfn)(rspq->rsphdlr[mc].cbarg, msghdr);

  BFA_MSGQ_INDX_ADD(rspq->consumer_index, num_entries,
    rspq->depth);
 }

 bfa_fsm_send_event(rspq, RSPQ_E_RESP);
}
