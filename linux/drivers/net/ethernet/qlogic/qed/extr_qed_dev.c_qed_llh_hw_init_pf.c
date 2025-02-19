
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {int hw_mac_addr; } ;
struct qed_hwfn {TYPE_2__ hw_info; int rel_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {int mf_bits; TYPE_1__* p_llh_info; } ;
struct TYPE_3__ {scalar_t__ num_ppfid; } ;


 int DP_NOTICE (struct qed_dev*,char*) ;
 scalar_t__ NIG_REG_LLH_PPFID2PFID_TBL_0 ;
 scalar_t__ QED_IS_CMT (struct qed_dev*) ;
 int QED_IS_FCOE_PERSONALITY (struct qed_hwfn*) ;
 int QED_MF_LLH_MAC_CLSS ;
 int qed_llh_abs_ppfid (struct qed_dev*,scalar_t__,scalar_t__*) ;
 int qed_llh_add_mac_filter (struct qed_dev*,int ,int ) ;
 int qed_llh_set_engine_affin (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qed_llh_hw_init_pf(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u8 ppfid, abs_ppfid;
 int rc;

 for (ppfid = 0; ppfid < cdev->p_llh_info->num_ppfid; ppfid++) {
  u32 addr;

  rc = qed_llh_abs_ppfid(cdev, ppfid, &abs_ppfid);
  if (rc)
   return rc;

  addr = NIG_REG_LLH_PPFID2PFID_TBL_0 + abs_ppfid * 0x4;
  qed_wr(p_hwfn, p_ptt, addr, p_hwfn->rel_pf_id);
 }

 if (test_bit(QED_MF_LLH_MAC_CLSS, &cdev->mf_bits) &&
     !QED_IS_FCOE_PERSONALITY(p_hwfn)) {
  rc = qed_llh_add_mac_filter(cdev, 0,
         p_hwfn->hw_info.hw_mac_addr);
  if (rc)
   DP_NOTICE(cdev,
      "Failed to add an LLH filter with the primary MAC\n");
 }

 if (QED_IS_CMT(cdev)) {
  rc = qed_llh_set_engine_affin(p_hwfn, p_ptt);
  if (rc)
   return rc;
 }

 return 0;
}
