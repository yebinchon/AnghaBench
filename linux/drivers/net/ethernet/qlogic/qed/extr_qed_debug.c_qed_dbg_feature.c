
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {size_t engine_for_debug; struct qed_dbg_feature* features; } ;
struct qed_dev {TYPE_1__ dbg_params; struct qed_hwfn* hwfns; } ;
struct qed_dbg_feature {int dumped_dwords; int buf_size; int dump_buf; } ;
typedef enum qed_dbg_features { ____Placeholder_qed_dbg_features } qed_dbg_features ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_OK ;
 int DP_VERBOSE (struct qed_dev*,int ,char*,...) ;
 int EINVAL ;
 int QED_MSG_DEBUG ;
 int memcpy (void*,int ,int ) ;
 int qed_dbg_dump (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_dbg_get_status_str (int) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

int qed_dbg_feature(struct qed_dev *cdev, void *buffer,
      enum qed_dbg_features feature, u32 *num_dumped_bytes)
{
 struct qed_hwfn *p_hwfn =
  &cdev->hwfns[cdev->dbg_params.engine_for_debug];
 struct qed_dbg_feature *qed_feature =
  &cdev->dbg_params.features[feature];
 enum dbg_status dbg_rc;
 struct qed_ptt *p_ptt;
 int rc = 0;


 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EINVAL;


 dbg_rc = qed_dbg_dump(p_hwfn, p_ptt, feature);
 if (dbg_rc != DBG_STATUS_OK) {
  DP_VERBOSE(cdev, QED_MSG_DEBUG, "%s\n",
      qed_dbg_get_status_str(dbg_rc));
  *num_dumped_bytes = 0;
  rc = -EINVAL;
  goto out;
 }

 DP_VERBOSE(cdev, QED_MSG_DEBUG,
     "copying debugfs feature to external buffer\n");
 memcpy(buffer, qed_feature->dump_buf, qed_feature->buf_size);
 *num_dumped_bytes = cdev->dbg_params.features[feature].dumped_dwords *
       4;

out:
 qed_ptt_release(p_hwfn, p_ptt);
 return rc;
}
