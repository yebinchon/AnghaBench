
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_ptt* p_ptp_ptt; } ;
struct qed_dev {int dummy; } ;


 int NIG_REG_TSGEN_SYNC_TIME_LSB ;
 int NIG_REG_TSGEN_SYNC_TIME_MSB ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static int qed_ptp_hw_read_cc(struct qed_dev *cdev, u64 *phc_cycles)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt = p_hwfn->p_ptp_ptt;
 u32 temp = 0;

 temp = qed_rd(p_hwfn, p_ptt, NIG_REG_TSGEN_SYNC_TIME_LSB);
 *phc_cycles = qed_rd(p_hwfn, p_ptt, NIG_REG_TSGEN_SYNC_TIME_MSB);
 *phc_cycles <<= 32;
 *phc_cycles |= temp;

 return 0;
}
