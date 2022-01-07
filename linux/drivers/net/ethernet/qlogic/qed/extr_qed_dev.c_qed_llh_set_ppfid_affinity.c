
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int iwarp_affin; } ;
typedef enum qed_eng { ____Placeholder_qed_eng } qed_eng ;


 int DP_NOTICE (struct qed_dev*,char*,int) ;
 int EAGAIN ;
 int EINVAL ;
 int NIG_REG_PPF_TO_ENGINE_SEL ;
 int NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE ;



 int QED_IS_CMT (struct qed_dev*) ;
 scalar_t__ QED_IS_IWARP_PERSONALITY (struct qed_hwfn*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int SET_FIELD (int,int ,int) ;
 int qed_llh_abs_ppfid (struct qed_dev*,int,int*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int,int) ;

int qed_llh_set_ppfid_affinity(struct qed_dev *cdev, u8 ppfid, enum qed_eng eng)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt = qed_ptt_acquire(p_hwfn);
 u32 addr, val, eng_sel;
 u8 abs_ppfid;
 int rc = 0;

 if (!p_ptt)
  return -EAGAIN;

 if (!QED_IS_CMT(cdev))
  goto out;

 rc = qed_llh_abs_ppfid(cdev, ppfid, &abs_ppfid);
 if (rc)
  goto out;

 switch (eng) {
 case 129:
  eng_sel = 0;
  break;
 case 128:
  eng_sel = 1;
  break;
 case 130:
  eng_sel = 2;
  break;
 default:
  DP_NOTICE(cdev, "Invalid affinity value for ppfid [%d]\n", eng);
  rc = -EINVAL;
  goto out;
 }

 addr = NIG_REG_PPF_TO_ENGINE_SEL + abs_ppfid * 0x4;
 val = qed_rd(p_hwfn, p_ptt, addr);
 SET_FIELD(val, NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE, eng_sel);
 qed_wr(p_hwfn, p_ptt, addr, val);


 if (!ppfid && QED_IS_IWARP_PERSONALITY(p_hwfn))
  cdev->iwarp_affin = (eng == 128) ? 1 : 0;
out:
 qed_ptt_release(p_hwfn, p_ptt);

 return rc;
}
