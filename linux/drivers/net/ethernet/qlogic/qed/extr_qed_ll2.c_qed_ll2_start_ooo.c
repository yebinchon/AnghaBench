
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qed_ll2_params {int dummy; } ;
struct qed_ll2_acquire_data {int dummy; } ;
struct TYPE_3__ {int ll2_ooo_queue_id; } ;
struct TYPE_4__ {TYPE_1__ iscsi_pf_params; } ;
struct qed_hwfn {TYPE_2__ pf_params; } ;


 int DP_INFO (struct qed_hwfn*,char*) ;
 int QED_LL2_TYPE_OOO ;
 int QED_LL2_UNUSED_HANDLE ;
 int qed_ll2_acquire_connection (struct qed_hwfn*,struct qed_ll2_acquire_data*) ;
 int qed_ll2_establish_connection (struct qed_hwfn*,int ) ;
 int qed_ll2_release_connection (struct qed_hwfn*,int ) ;
 int qed_ll2_set_conn_data (struct qed_hwfn*,struct qed_ll2_acquire_data*,struct qed_ll2_params*,int ,int *,int) ;

__attribute__((used)) static int qed_ll2_start_ooo(struct qed_hwfn *p_hwfn,
        struct qed_ll2_params *params)
{
 u8 *handle = &p_hwfn->pf_params.iscsi_pf_params.ll2_ooo_queue_id;
 struct qed_ll2_acquire_data data;
 int rc;

 qed_ll2_set_conn_data(p_hwfn, &data, params,
         QED_LL2_TYPE_OOO, handle, 1);

 rc = qed_ll2_acquire_connection(p_hwfn, &data);
 if (rc) {
  DP_INFO(p_hwfn, "Failed to acquire LL2 OOO connection\n");
  goto out;
 }

 rc = qed_ll2_establish_connection(p_hwfn, *handle);
 if (rc) {
  DP_INFO(p_hwfn, "Failed to establish LL2 OOO connection\n");
  goto fail;
 }

 return 0;

fail:
 qed_ll2_release_connection(p_hwfn, *handle);
out:
 *handle = QED_LL2_UNUSED_HANDLE;
 return rc;
}
