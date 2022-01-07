
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ll2_ooo_queue_id; } ;
struct TYPE_4__ {TYPE_1__ iscsi_pf_params; } ;
struct qed_hwfn {TYPE_2__ pf_params; } ;


 int DP_VERBOSE (struct qed_hwfn*,int,char*,int ) ;
 int QED_LL2_UNUSED_HANDLE ;
 int QED_MSG_LL2 ;
 int QED_MSG_STORAGE ;
 int qed_ll2_release_connection (struct qed_hwfn*,int ) ;
 int qed_ll2_terminate_connection (struct qed_hwfn*,int ) ;

__attribute__((used)) static void qed_ll2_stop_ooo(struct qed_hwfn *p_hwfn)
{
 u8 *handle = &p_hwfn->pf_params.iscsi_pf_params.ll2_ooo_queue_id;

 DP_VERBOSE(p_hwfn, (QED_MSG_STORAGE | QED_MSG_LL2),
     "Stopping LL2 OOO queue [%02x]\n", *handle);

 qed_ll2_terminate_connection(p_hwfn, *handle);
 qed_ll2_release_connection(p_hwfn, *handle);
 *handle = QED_LL2_UNUSED_HANDLE;
}
