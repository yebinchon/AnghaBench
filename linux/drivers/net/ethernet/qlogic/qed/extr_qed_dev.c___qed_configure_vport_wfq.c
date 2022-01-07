
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_link_state {int min_pf_rate; } ;
struct TYPE_10__ {TYPE_4__* wfq_data; } ;
struct qed_hwfn {TYPE_5__ qm_info; TYPE_3__* cdev; } ;
struct TYPE_9__ {int configured; int min_speed; } ;
struct TYPE_8__ {TYPE_2__* hwfns; } ;
struct TYPE_7__ {TYPE_1__* mcp_info; } ;
struct TYPE_6__ {struct qed_mcp_link_state link_output; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int qed_configure_wfq_for_all_vports (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_init_wfq_param (struct qed_hwfn*,size_t,int ,int ) ;

__attribute__((used)) static int __qed_configure_vport_wfq(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt, u16 vp_id, u32 rate)
{
 struct qed_mcp_link_state *p_link;
 int rc = 0;

 p_link = &p_hwfn->cdev->hwfns[0].mcp_info->link_output;

 if (!p_link->min_pf_rate) {
  p_hwfn->qm_info.wfq_data[vp_id].min_speed = rate;
  p_hwfn->qm_info.wfq_data[vp_id].configured = 1;
  return rc;
 }

 rc = qed_init_wfq_param(p_hwfn, vp_id, rate, p_link->min_pf_rate);

 if (!rc)
  qed_configure_wfq_for_all_vports(p_hwfn, p_ptt,
       p_link->min_pf_rate);
 else
  DP_NOTICE(p_hwfn,
     "Validation failed while configuring min rate\n");

 return rc;
}
