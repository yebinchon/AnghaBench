
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conn_type; } ;
struct qed_ll2_info {TYPE_1__ input; } ;
struct qed_hwfn {int p_ooo_info; } ;


 scalar_t__ QED_LL2_TYPE_OOO ;
 int qed_ooo_release_all_isles (struct qed_hwfn*,int ) ;
 int qed_ooo_submit_rx_buffers (struct qed_hwfn*,struct qed_ll2_info*) ;

__attribute__((used)) static void
qed_ll2_establish_connection_ooo(struct qed_hwfn *p_hwfn,
     struct qed_ll2_info *p_ll2_conn)
{
 if (p_ll2_conn->input.conn_type != QED_LL2_TYPE_OOO)
  return;

 qed_ooo_release_all_isles(p_hwfn, p_hwfn->p_ooo_info);
 qed_ooo_submit_rx_buffers(p_hwfn, p_ll2_conn);
}
