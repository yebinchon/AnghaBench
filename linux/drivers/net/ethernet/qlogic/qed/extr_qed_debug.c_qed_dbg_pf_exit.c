
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct qed_dbg_feature* features; } ;
struct qed_dev {TYPE_1__ dbg_params; } ;
struct qed_dbg_feature {int * dump_buf; } ;
typedef enum qed_dbg_features { ____Placeholder_qed_dbg_features } qed_dbg_features ;


 int DBG_FEATURE_NUM ;
 int vfree (int *) ;

void qed_dbg_pf_exit(struct qed_dev *cdev)
{
 struct qed_dbg_feature *feature = ((void*)0);
 enum qed_dbg_features feature_idx;




 for (feature_idx = 0; feature_idx < DBG_FEATURE_NUM; feature_idx++) {
  feature = &cdev->dbg_params.features[feature_idx];
  if (feature->dump_buf) {
   vfree(feature->dump_buf);
   feature->dump_buf = ((void*)0);
  }
 }
}
