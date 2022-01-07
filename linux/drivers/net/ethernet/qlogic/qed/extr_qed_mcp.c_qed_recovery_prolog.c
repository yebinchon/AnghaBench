
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_ptt* p_main_ptt; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_RECOVERY_PROLOG_SLEEP_MS ;
 int msleep (int ) ;
 int qed_pglueb_set_pfid_enable (struct qed_hwfn*,struct qed_ptt*,int) ;

int qed_recovery_prolog(struct qed_dev *cdev)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt = p_hwfn->p_main_ptt;
 int rc;


 msleep(QED_RECOVERY_PROLOG_SLEEP_MS);


 rc = qed_pglueb_set_pfid_enable(p_hwfn, p_ptt, 0);
 if (rc)
  DP_NOTICE(p_hwfn,
     "qed_pglueb_set_pfid_enable() failed. rc = %d.\n",
     rc);

 return rc;
}
