
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int PROTOCOLID_IWARP ;
 int qed_iwarp_free_prealloc_ep (struct qed_hwfn*) ;
 int qed_iwarp_ll2_stop (struct qed_hwfn*) ;
 int qed_iwarp_wait_for_all_cids (struct qed_hwfn*) ;
 int qed_spq_unregister_async_cb (struct qed_hwfn*,int ) ;

int qed_iwarp_stop(struct qed_hwfn *p_hwfn)
{
 int rc;

 qed_iwarp_free_prealloc_ep(p_hwfn);
 rc = qed_iwarp_wait_for_all_cids(p_hwfn);
 if (rc)
  return rc;

 qed_spq_unregister_async_cb(p_hwfn, PROTOCOLID_IWARP);

 return qed_iwarp_ll2_stop(p_hwfn);
}
