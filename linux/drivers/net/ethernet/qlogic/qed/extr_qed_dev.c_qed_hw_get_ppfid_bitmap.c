
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rel_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {int num_ports_in_engine; int ppfid_bitmap; } ;


 int DP_INFO (struct qed_hwfn*,char*,int,int) ;
 int EOPNOTSUPP ;
 scalar_t__ QED_IS_BB (struct qed_dev*) ;
 int qed_mcp_get_ppfid_bitmap (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_hw_get_ppfid_bitmap(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u8 native_ppfid_idx;
 int rc;


 if (QED_IS_BB(cdev))
  native_ppfid_idx = p_hwfn->rel_pf_id;
 else
  native_ppfid_idx = p_hwfn->rel_pf_id /
      cdev->num_ports_in_engine;

 rc = qed_mcp_get_ppfid_bitmap(p_hwfn, p_ptt);
 if (rc != 0 && rc != -EOPNOTSUPP)
  return rc;
 else if (rc == -EOPNOTSUPP)
  cdev->ppfid_bitmap = 0x1 << native_ppfid_idx;

 if (!(cdev->ppfid_bitmap & (0x1 << native_ppfid_idx))) {
  DP_INFO(p_hwfn,
   "Fix the PPFID bitmap to include the native PPFID [native_ppfid_idx %hhd, orig_bitmap 0x%hhx]\n",
   native_ppfid_idx, cdev->ppfid_bitmap);
  cdev->ppfid_bitmap = 0x1 << native_ppfid_idx;
 }

 return 0;
}
