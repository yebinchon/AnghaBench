
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_link_state {int line_speed; int min_pf_rate; } ;
struct TYPE_6__ {int pf_wfq; } ;
struct qed_hwfn {int rel_pf_id; TYPE_3__ qm_info; TYPE_2__* mcp_info; } ;
struct TYPE_4__ {int bandwidth_min; } ;
struct TYPE_5__ {TYPE_1__ func_info; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int NETIF_MSG_LINK ;
 int qed_init_pf_wfq (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int __qed_configure_pf_min_bandwidth(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         struct qed_mcp_link_state *p_link,
         u8 min_bw)
{
 int rc = 0;

 p_hwfn->mcp_info->func_info.bandwidth_min = min_bw;
 p_hwfn->qm_info.pf_wfq = min_bw;

 if (!p_link->line_speed)
  return rc;

 p_link->min_pf_rate = (p_link->line_speed * min_bw) / 100;

 rc = qed_init_pf_wfq(p_hwfn, p_ptt, p_hwfn->rel_pf_id, min_bw);

 DP_VERBOSE(p_hwfn, NETIF_MSG_LINK,
     "Configured MIN bandwidth to be %d Mb/sec\n",
     p_link->min_pf_rate);

 return rc;
}
