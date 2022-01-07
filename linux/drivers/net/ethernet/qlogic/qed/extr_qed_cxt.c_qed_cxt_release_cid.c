
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;


 int QED_CXT_PF_CID ;
 int _qed_cxt_release_cid (struct qed_hwfn*,int ,int ) ;

void qed_cxt_release_cid(struct qed_hwfn *p_hwfn, u32 cid)
{
 _qed_cxt_release_cid(p_hwfn, cid, QED_CXT_PF_CID);
}
