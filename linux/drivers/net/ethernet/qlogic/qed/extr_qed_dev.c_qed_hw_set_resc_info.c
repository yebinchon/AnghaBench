
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ QED_MAX_RESC ;
 int __qed_hw_set_resc_info (struct qed_hwfn*,scalar_t__) ;

__attribute__((used)) static int qed_hw_set_resc_info(struct qed_hwfn *p_hwfn)
{
 int rc;
 u8 res_id;

 for (res_id = 0; res_id < QED_MAX_RESC; res_id++) {
  rc = __qed_hw_set_resc_info(p_hwfn, res_id);
  if (rc)
   return rc;
 }

 return 0;
}
