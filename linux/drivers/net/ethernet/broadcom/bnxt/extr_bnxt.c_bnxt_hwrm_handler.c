
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tx_cmp {int dummy; } ;
struct hwrm_fwd_req_cmpl {int source_id; } ;
struct hwrm_cmpl {int sequence_id; } ;
struct hwrm_async_event_cmpl {int dummy; } ;
struct TYPE_2__ {int first_vf_id; int active_vfs; int * vf_event_bmap; } ;
struct bnxt {int hwrm_intr_seq_id; int sp_event; TYPE_1__ pf; int dev; } ;


 int BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT ;



 int EINVAL ;
 int TX_CMP_TYPE (struct tx_cmp*) ;
 int bnxt_async_event_process (struct bnxt*,struct hwrm_async_event_cmpl*) ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 int le16_to_cpu (int ) ;
 int netdev_err (int ,char*,int) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int bnxt_hwrm_handler(struct bnxt *bp, struct tx_cmp *txcmp)
{
 u16 cmpl_type = TX_CMP_TYPE(txcmp), vf_id, seq_id;
 struct hwrm_cmpl *h_cmpl = (struct hwrm_cmpl *)txcmp;
 struct hwrm_fwd_req_cmpl *fwd_req_cmpl =
    (struct hwrm_fwd_req_cmpl *)txcmp;

 switch (cmpl_type) {
 case 129:
  seq_id = le16_to_cpu(h_cmpl->sequence_id);
  if (seq_id == bp->hwrm_intr_seq_id)
   bp->hwrm_intr_seq_id = (u16)~bp->hwrm_intr_seq_id;
  else
   netdev_err(bp->dev, "Invalid hwrm seq id %d\n", seq_id);
  break;

 case 128:
  vf_id = le16_to_cpu(fwd_req_cmpl->source_id);

  if ((vf_id < bp->pf.first_vf_id) ||
      (vf_id >= bp->pf.first_vf_id + bp->pf.active_vfs)) {
   netdev_err(bp->dev, "Msg contains invalid VF id %x\n",
       vf_id);
   return -EINVAL;
  }

  set_bit(vf_id - bp->pf.first_vf_id, bp->pf.vf_event_bmap);
  set_bit(BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
  break;

 case 130:
  bnxt_async_event_process(bp,
      (struct hwrm_async_event_cmpl *)txcmp);

 default:
  break;
 }

 return 0;
}
