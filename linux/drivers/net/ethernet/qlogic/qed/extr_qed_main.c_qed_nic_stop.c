
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int b_sp_dpc_enabled; int sp_dpc; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*,int,int ) ;
 int NETIF_MSG_IFDOWN ;
 int qed_dbg_pf_exit (struct qed_dev*) ;
 int qed_hw_stop (struct qed_dev*) ;
 int tasklet_disable (int ) ;

__attribute__((used)) static int qed_nic_stop(struct qed_dev *cdev)
{
 int i, rc;

 rc = qed_hw_stop(cdev);

 for (i = 0; i < cdev->num_hwfns; i++) {
  struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

  if (p_hwfn->b_sp_dpc_enabled) {
   tasklet_disable(p_hwfn->sp_dpc);
   p_hwfn->b_sp_dpc_enabled = 0;
   DP_VERBOSE(cdev, NETIF_MSG_IFDOWN,
       "Disabled sp tasklet [hwfn %d] at %p\n",
       i, p_hwfn->sp_dpc);
  }
 }

 qed_dbg_pf_exit(cdev);

 return rc;
}
