
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_dev {int dummy; } ;


 int DBG_FEATURE_IDLE_CHK ;
 int qed_dbg_feature (struct qed_dev*,void*,int ,int *) ;

int qed_dbg_idle_chk(struct qed_dev *cdev, void *buffer, u32 *num_dumped_bytes)
{
 return qed_dbg_feature(cdev, buffer, DBG_FEATURE_IDLE_CHK,
          num_dumped_bytes);
}
