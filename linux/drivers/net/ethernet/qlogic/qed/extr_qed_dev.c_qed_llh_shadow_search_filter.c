
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qed_llh_filter {int dummy; } qed_llh_filter ;
typedef size_t u8 ;
struct qed_llh_info {struct qed_llh_filter_info** pp_filters; } ;
struct qed_llh_filter_info {int filter; } ;
struct qed_dev {struct qed_llh_info* p_llh_info; } ;


 size_t NIG_REG_LLH_FUNC_FILTER_EN_SIZE ;
 size_t QED_LLH_INVALID_FILTER_IDX ;
 int memcmp (union qed_llh_filter*,int *,int) ;
 int qed_llh_shadow_sanity (struct qed_dev*,size_t,int ,char*) ;

__attribute__((used)) static int
qed_llh_shadow_search_filter(struct qed_dev *cdev,
        u8 ppfid,
        union qed_llh_filter *p_filter, u8 *p_filter_idx)
{
 struct qed_llh_info *p_llh_info = cdev->p_llh_info;
 struct qed_llh_filter_info *p_filters;
 int rc;
 u8 i;

 rc = qed_llh_shadow_sanity(cdev, ppfid, 0, "search");
 if (rc)
  return rc;

 *p_filter_idx = QED_LLH_INVALID_FILTER_IDX;

 p_filters = p_llh_info->pp_filters[ppfid];
 for (i = 0; i < NIG_REG_LLH_FUNC_FILTER_EN_SIZE; i++) {
  if (!memcmp(p_filter, &p_filters[i].filter,
       sizeof(*p_filter))) {
   *p_filter_idx = i;
   break;
  }
 }

 return 0;
}
