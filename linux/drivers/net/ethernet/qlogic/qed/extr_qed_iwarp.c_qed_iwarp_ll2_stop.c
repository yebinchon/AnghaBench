
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_iwarp_info {scalar_t__ ll2_syn_handle; scalar_t__ ll2_ooo_handle; scalar_t__ ll2_mpa_handle; int mac_addr; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; int cdev; } ;
struct TYPE_2__ {struct qed_iwarp_info iwarp; } ;


 int DP_INFO (struct qed_hwfn*,char*) ;
 scalar_t__ QED_IWARP_HANDLE_INVAL ;
 int qed_ll2_release_connection (struct qed_hwfn*,scalar_t__) ;
 int qed_ll2_terminate_connection (struct qed_hwfn*,scalar_t__) ;
 int qed_llh_remove_mac_filter (int ,int ,int ) ;

__attribute__((used)) static int qed_iwarp_ll2_stop(struct qed_hwfn *p_hwfn)
{
 struct qed_iwarp_info *iwarp_info = &p_hwfn->p_rdma_info->iwarp;
 int rc = 0;

 if (iwarp_info->ll2_syn_handle != QED_IWARP_HANDLE_INVAL) {
  rc = qed_ll2_terminate_connection(p_hwfn,
        iwarp_info->ll2_syn_handle);
  if (rc)
   DP_INFO(p_hwfn, "Failed to terminate syn connection\n");

  qed_ll2_release_connection(p_hwfn, iwarp_info->ll2_syn_handle);
  iwarp_info->ll2_syn_handle = QED_IWARP_HANDLE_INVAL;
 }

 if (iwarp_info->ll2_ooo_handle != QED_IWARP_HANDLE_INVAL) {
  rc = qed_ll2_terminate_connection(p_hwfn,
        iwarp_info->ll2_ooo_handle);
  if (rc)
   DP_INFO(p_hwfn, "Failed to terminate ooo connection\n");

  qed_ll2_release_connection(p_hwfn, iwarp_info->ll2_ooo_handle);
  iwarp_info->ll2_ooo_handle = QED_IWARP_HANDLE_INVAL;
 }

 if (iwarp_info->ll2_mpa_handle != QED_IWARP_HANDLE_INVAL) {
  rc = qed_ll2_terminate_connection(p_hwfn,
        iwarp_info->ll2_mpa_handle);
  if (rc)
   DP_INFO(p_hwfn, "Failed to terminate mpa connection\n");

  qed_ll2_release_connection(p_hwfn, iwarp_info->ll2_mpa_handle);
  iwarp_info->ll2_mpa_handle = QED_IWARP_HANDLE_INVAL;
 }

 qed_llh_remove_mac_filter(p_hwfn->cdev, 0,
      p_hwfn->p_rdma_info->iwarp.mac_addr);

 return rc;
}
