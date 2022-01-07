
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int opcode; } ;
struct ice_rq_event_info {int msg_buf; TYPE_4__ desc; int buf_len; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {int len; } ;
struct ice_ctl_q_info {int rq_buf_size; TYPE_2__ sq; TYPE_1__ rq; } ;
struct ice_hw {struct ice_ctl_q_info mailboxq; struct ice_ctl_q_info adminq; } ;
struct ice_pf {TYPE_3__* pdev; int state; struct ice_hw hw; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_ctl_q { ____Placeholder_ice_ctl_q } ice_ctl_q ;
struct TYPE_7__ {int dev; } ;


 int GFP_KERNEL ;


 scalar_t__ ICE_DFLT_IRQ_WORK ;
 int ICE_ERR_AQ_NO_WORK ;
 int PF_FW_ARQLEN_ARQCRIT_M ;
 int PF_FW_ARQLEN_ARQOVFL_M ;
 int PF_FW_ARQLEN_ARQVFE_M ;
 int PF_FW_ATQLEN_ATQCRIT_M ;
 int PF_FW_ATQLEN_ATQOVFL_M ;
 int PF_FW_ATQLEN_ATQVFE_M ;
 int __ICE_RESET_FAILED ;
 int dev_dbg (int *,char*,char const*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int devm_kfree (int *,int ) ;
 int devm_kzalloc (int *,int ,int ) ;



 int ice_clean_rq_elem (struct ice_hw*,struct ice_ctl_q_info*,struct ice_rq_event_info*,int*) ;
 int ice_dcb_process_lldp_set_mib_change (struct ice_pf*,struct ice_rq_event_info*) ;
 int ice_handle_link_event (struct ice_pf*,struct ice_rq_event_info*) ;

 int ice_output_fw_log (struct ice_hw*,TYPE_4__*,int ) ;
 int ice_vc_process_vf_msg (struct ice_pf*,struct ice_rq_event_info*) ;
 int le16_to_cpu (int ) ;
 int rd32 (struct ice_hw*,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
{
 struct ice_rq_event_info event;
 struct ice_hw *hw = &pf->hw;
 struct ice_ctl_q_info *cq;
 u16 pending, i = 0;
 const char *qtype;
 u32 oldval, val;


 if (test_bit(__ICE_RESET_FAILED, pf->state))
  return 0;

 switch (q_type) {
 case 133:
  cq = &hw->adminq;
  qtype = "Admin";
  break;
 case 132:
  cq = &hw->mailboxq;
  qtype = "Mailbox";
  break;
 default:
  dev_warn(&pf->pdev->dev, "Unknown control queue type 0x%x\n",
    q_type);
  return 0;
 }




 val = rd32(hw, cq->rq.len);
 if (val & (PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
     PF_FW_ARQLEN_ARQCRIT_M)) {
  oldval = val;
  if (val & PF_FW_ARQLEN_ARQVFE_M)
   dev_dbg(&pf->pdev->dev,
    "%s Receive Queue VF Error detected\n", qtype);
  if (val & PF_FW_ARQLEN_ARQOVFL_M) {
   dev_dbg(&pf->pdev->dev,
    "%s Receive Queue Overflow Error detected\n",
    qtype);
  }
  if (val & PF_FW_ARQLEN_ARQCRIT_M)
   dev_dbg(&pf->pdev->dev,
    "%s Receive Queue Critical Error detected\n",
    qtype);
  val &= ~(PF_FW_ARQLEN_ARQVFE_M | PF_FW_ARQLEN_ARQOVFL_M |
    PF_FW_ARQLEN_ARQCRIT_M);
  if (oldval != val)
   wr32(hw, cq->rq.len, val);
 }

 val = rd32(hw, cq->sq.len);
 if (val & (PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
     PF_FW_ATQLEN_ATQCRIT_M)) {
  oldval = val;
  if (val & PF_FW_ATQLEN_ATQVFE_M)
   dev_dbg(&pf->pdev->dev,
    "%s Send Queue VF Error detected\n", qtype);
  if (val & PF_FW_ATQLEN_ATQOVFL_M) {
   dev_dbg(&pf->pdev->dev,
    "%s Send Queue Overflow Error detected\n",
    qtype);
  }
  if (val & PF_FW_ATQLEN_ATQCRIT_M)
   dev_dbg(&pf->pdev->dev,
    "%s Send Queue Critical Error detected\n",
    qtype);
  val &= ~(PF_FW_ATQLEN_ATQVFE_M | PF_FW_ATQLEN_ATQOVFL_M |
    PF_FW_ATQLEN_ATQCRIT_M);
  if (oldval != val)
   wr32(hw, cq->sq.len, val);
 }

 event.buf_len = cq->rq_buf_size;
 event.msg_buf = devm_kzalloc(&pf->pdev->dev, event.buf_len,
         GFP_KERNEL);
 if (!event.msg_buf)
  return 0;

 do {
  enum ice_status ret;
  u16 opcode;

  ret = ice_clean_rq_elem(hw, cq, &event, &pending);
  if (ret == ICE_ERR_AQ_NO_WORK)
   break;
  if (ret) {
   dev_err(&pf->pdev->dev,
    "%s Receive Queue event error %d\n", qtype,
    ret);
   break;
  }

  opcode = le16_to_cpu(event.desc.opcode);

  switch (opcode) {
  case 130:
   if (ice_handle_link_event(pf, &event))
    dev_err(&pf->pdev->dev,
     "Could not handle link event\n");
   break;
  case 128:
   ice_vc_process_vf_msg(pf, &event);
   break;
  case 131:
   ice_output_fw_log(hw, &event.desc, event.msg_buf);
   break;
  case 129:
   ice_dcb_process_lldp_set_mib_change(pf, &event);
   break;
  default:
   dev_dbg(&pf->pdev->dev,
    "%s Receive Queue unknown event 0x%04x ignored\n",
    qtype, opcode);
   break;
  }
 } while (pending && (i++ < ICE_DFLT_IRQ_WORK));

 devm_kfree(&pf->pdev->dev, event.msg_buf);

 return pending && (i == ICE_DFLT_IRQ_WORK);
}
