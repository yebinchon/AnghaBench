
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct qed_sb_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {size_t num_hwfns; struct qed_hwfn* hwfns; } ;
typedef enum qed_sb_type { ____Placeholder_qed_sb_type } qed_sb_type ;


 int DP_VERBOSE (struct qed_dev*,int ,char*,int,size_t,size_t) ;
 scalar_t__ IS_LEAD_HWFN (struct qed_hwfn*) ;
 int NETIF_MSG_INTR ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SB_TYPE_L2_QUEUE ;
 int qed_int_sb_release (struct qed_hwfn*,struct qed_sb_info*,size_t) ;

__attribute__((used)) static u32 qed_sb_release(struct qed_dev *cdev,
     struct qed_sb_info *sb_info,
     u16 sb_id,
     enum qed_sb_type type)
{
 struct qed_hwfn *p_hwfn;
 u16 rel_sb_id;
 u32 rc;


 if (type == QED_SB_TYPE_L2_QUEUE) {
  p_hwfn = &cdev->hwfns[sb_id % cdev->num_hwfns];
  rel_sb_id = sb_id / cdev->num_hwfns;
 } else {
  p_hwfn = QED_AFFIN_HWFN(cdev);
  rel_sb_id = sb_id;
 }

 DP_VERBOSE(cdev, NETIF_MSG_INTR,
     "hwfn [%d] <--[init]-- SB %04x [0x%04x upper]\n",
     IS_LEAD_HWFN(p_hwfn) ? 0 : 1, rel_sb_id, sb_id);

 rc = qed_int_sb_release(p_hwfn, sb_info, rel_sb_id);

 return rc;
}
