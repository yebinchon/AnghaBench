
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct qed_resc_lock_params {scalar_t__ retry_num; scalar_t__ b_granted; int retry_interval; scalar_t__ sleep_b4_retry; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int __qed_mcp_resc_lock (struct qed_hwfn*,struct qed_ptt*,struct qed_resc_lock_params*) ;
 int msleep (int ) ;
 int udelay (int ) ;

int
qed_mcp_resc_lock(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt, struct qed_resc_lock_params *p_params)
{
 u32 retry_cnt = 0;
 int rc;

 do {

  if (retry_cnt) {
   if (p_params->sleep_b4_retry) {
    u16 retry_interval_in_ms =
        DIV_ROUND_UP(p_params->retry_interval,
       1000);

    msleep(retry_interval_in_ms);
   } else {
    udelay(p_params->retry_interval);
   }
  }

  rc = __qed_mcp_resc_lock(p_hwfn, p_ptt, p_params);
  if (rc)
   return rc;

  if (p_params->b_granted)
   break;
 } while (retry_cnt++ < p_params->retry_num);

 return 0;
}
