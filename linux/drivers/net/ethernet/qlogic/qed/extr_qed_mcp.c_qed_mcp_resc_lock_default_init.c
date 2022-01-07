
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_resc_unlock_params {int sleep_b4_retry; int resource; int retry_interval; int retry_num; int timeout; } ;
struct qed_resc_lock_params {int sleep_b4_retry; int resource; int retry_interval; int retry_num; int timeout; } ;
typedef enum qed_resc_lock { ____Placeholder_qed_resc_lock } qed_resc_lock ;


 int QED_MCP_RESC_LOCK_RETRY_CNT_DFLT ;
 int QED_MCP_RESC_LOCK_RETRY_VAL_DFLT ;
 int QED_MCP_RESC_LOCK_TO_NONE ;
 int memset (struct qed_resc_unlock_params*,int ,int) ;

void qed_mcp_resc_lock_default_init(struct qed_resc_lock_params *p_lock,
        struct qed_resc_unlock_params *p_unlock,
        enum qed_resc_lock
        resource, bool b_is_permanent)
{
 if (p_lock) {
  memset(p_lock, 0, sizeof(*p_lock));





  if (b_is_permanent) {
   p_lock->timeout = QED_MCP_RESC_LOCK_TO_NONE;
  } else {
   p_lock->retry_num = QED_MCP_RESC_LOCK_RETRY_CNT_DFLT;
   p_lock->retry_interval =
       QED_MCP_RESC_LOCK_RETRY_VAL_DFLT;
   p_lock->sleep_b4_retry = 1;
  }

  p_lock->resource = resource;
 }

 if (p_unlock) {
  memset(p_unlock, 0, sizeof(*p_unlock));
  p_unlock->resource = resource;
 }
}
