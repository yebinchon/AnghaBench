
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int dummy; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int PROTOCOLID_ROCE ;
 int QED_ELEM_CXT ;
 int QED_ELEM_SRQ ;
 int QED_ELEM_TASK ;
 int qed_cxt_free_ilt_range (struct qed_hwfn*,int ,int ,int ) ;
 int qed_cxt_get_proto_cid_count (struct qed_hwfn*,int,int *) ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int) ;
 int qed_cxt_get_proto_tid_count (struct qed_hwfn*,int) ;
 int qed_cxt_get_srq_count (struct qed_hwfn*) ;

int qed_cxt_free_proto_ilt(struct qed_hwfn *p_hwfn, enum protocol_type proto)
{
 int rc;
 u32 cid;


 rc = qed_cxt_free_ilt_range(p_hwfn, QED_ELEM_CXT,
        qed_cxt_get_proto_cid_start(p_hwfn,
        proto),
        qed_cxt_get_proto_cid_count(p_hwfn,
        proto, &cid));

 if (rc)
  return rc;




 proto = PROTOCOLID_ROCE;
 rc = qed_cxt_free_ilt_range(p_hwfn, QED_ELEM_TASK, 0,
        qed_cxt_get_proto_tid_count(p_hwfn, proto));
 if (rc)
  return rc;


 rc = qed_cxt_free_ilt_range(p_hwfn, QED_ELEM_SRQ, 0,
        qed_cxt_get_srq_count(p_hwfn));

 return rc;
}
