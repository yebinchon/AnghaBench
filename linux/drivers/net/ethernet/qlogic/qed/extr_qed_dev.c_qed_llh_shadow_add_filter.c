
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qed_llh_filter {int dummy; } qed_llh_filter ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_dev {int dummy; } ;
typedef enum qed_llh_filter_type { ____Placeholder_qed_llh_filter_type } qed_llh_filter_type ;


 int DP_NOTICE (struct qed_dev*,char*,scalar_t__) ;
 int EINVAL ;
 scalar_t__ QED_LLH_INVALID_FILTER_IDX ;
 int __qed_llh_shadow_add_filter (struct qed_dev*,scalar_t__,scalar_t__,int,union qed_llh_filter*,int *) ;
 int qed_llh_shadow_get_free_idx (struct qed_dev*,scalar_t__,scalar_t__*) ;
 int qed_llh_shadow_search_filter (struct qed_dev*,scalar_t__,union qed_llh_filter*,scalar_t__*) ;

__attribute__((used)) static int
qed_llh_shadow_add_filter(struct qed_dev *cdev,
     u8 ppfid,
     enum qed_llh_filter_type type,
     union qed_llh_filter *p_filter,
     u8 *p_filter_idx, u32 *p_ref_cnt)
{
 int rc;


 rc = qed_llh_shadow_search_filter(cdev, ppfid, p_filter, p_filter_idx);
 if (rc)
  return rc;


 if (*p_filter_idx == QED_LLH_INVALID_FILTER_IDX) {
  rc = qed_llh_shadow_get_free_idx(cdev, ppfid, p_filter_idx);
  if (rc)
   return rc;
 }


 if (*p_filter_idx == QED_LLH_INVALID_FILTER_IDX) {
  DP_NOTICE(cdev,
     "Failed to find an empty LLH filter to utilize [ppfid %d]\n",
     ppfid);
  return -EINVAL;
 }

 return __qed_llh_shadow_add_filter(cdev, ppfid, *p_filter_idx, type,
        p_filter, p_ref_cnt);
}
