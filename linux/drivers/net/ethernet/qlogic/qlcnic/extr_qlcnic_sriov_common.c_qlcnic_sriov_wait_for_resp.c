
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct qlcnic_bc_trans {int trans_state; struct completion resp_cmpl; } ;


 int QLC_ABORT ;
 int QLC_END ;
 int QLC_MBOX_RESP_TIMEOUT ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static inline void qlcnic_sriov_wait_for_resp(struct qlcnic_bc_trans *trans)
{
 struct completion *cmpl = &trans->resp_cmpl;

 if (wait_for_completion_timeout(cmpl, QLC_MBOX_RESP_TIMEOUT))
  trans->trans_state = QLC_END;
 else
  trans->trans_state = QLC_ABORT;

 return;
}
