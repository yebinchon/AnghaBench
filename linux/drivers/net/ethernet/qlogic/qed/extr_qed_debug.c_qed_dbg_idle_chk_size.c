
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;


 int DBG_FEATURE_IDLE_CHK ;
 int qed_dbg_feature_size (struct qed_dev*,int ) ;

int qed_dbg_idle_chk_size(struct qed_dev *cdev)
{
 return qed_dbg_feature_size(cdev, DBG_FEATURE_IDLE_CHK);
}
