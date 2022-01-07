
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* p_iov_info; } ;
struct TYPE_3__ {scalar_t__ total_vfs; } ;


 int VF_MAX_STATIC ;
 int memset (int *,int ,int) ;
 int msleep (int) ;
 int qed_iov_execute_vf_flr_cleanup (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int *) ;
 int qed_mcp_ack_vf_flr (struct qed_hwfn*,struct qed_ptt*,int *) ;

__attribute__((used)) static int
qed_iov_vf_flr_cleanup(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 ack_vfs[VF_MAX_STATIC / 32];
 int rc = 0;
 u16 i;

 memset(ack_vfs, 0, sizeof(u32) * (VF_MAX_STATIC / 32));





 msleep(100);

 for (i = 0; i < p_hwfn->cdev->p_iov_info->total_vfs; i++)
  qed_iov_execute_vf_flr_cleanup(p_hwfn, p_ptt, i, ack_vfs);

 rc = qed_mcp_ack_vf_flr(p_hwfn, p_ptt, ack_vfs);
 return rc;
}
