
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union pfvf_tlvs {TYPE_2__ default_resp; } ;
struct qed_hwfn {TYPE_3__* vf_iov_info; } ;
struct TYPE_6__ {int mutex; union pfvf_tlvs* pf2vf_reply; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int ) ;
 int QED_MSG_IOV ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void qed_vf_pf_req_end(struct qed_hwfn *p_hwfn, int req_status)
{
 union pfvf_tlvs *resp = p_hwfn->vf_iov_info->pf2vf_reply;

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "VF request status = 0x%x, PF reply status = 0x%x\n",
     req_status, resp->default_resp.hdr.status);

 mutex_unlock(&(p_hwfn->vf_iov_info->mutex));
}
