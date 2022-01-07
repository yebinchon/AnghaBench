
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int QED_CXT_PF_CID ;
 int _qed_cxt_acquire_cid (struct qed_hwfn*,int,int *,int ) ;

int qed_cxt_acquire_cid(struct qed_hwfn *p_hwfn,
   enum protocol_type type, u32 *p_cid)
{
 return _qed_cxt_acquire_cid(p_hwfn, type, p_cid, QED_CXT_PF_CID);
}
