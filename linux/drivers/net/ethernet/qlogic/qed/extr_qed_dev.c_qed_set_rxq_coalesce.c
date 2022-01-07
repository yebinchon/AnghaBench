
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ustorm_eth_queue_zone {int dummy; } ;
struct TYPE_2__ {int queue_id; } ;
struct qed_queue_cid {TYPE_1__ abs; int sb_igu_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ BAR0_MAP_REG_USDM_RAM ;
 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int EINVAL ;
 scalar_t__ USTORM_ETH_QUEUE_ZONE_OFFSET (int ) ;
 int qed_int_set_timer_res (struct qed_hwfn*,struct qed_ptt*,int,int ,int) ;
 int qed_set_coalesce (struct qed_hwfn*,struct qed_ptt*,scalar_t__,struct ustorm_eth_queue_zone*,int,int) ;

int qed_set_rxq_coalesce(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    u16 coalesce, struct qed_queue_cid *p_cid)
{
 struct ustorm_eth_queue_zone eth_qzone;
 u8 timeset, timer_res;
 u32 address;
 int rc;


 if (coalesce <= 0x7F) {
  timer_res = 0;
 } else if (coalesce <= 0xFF) {
  timer_res = 1;
 } else if (coalesce <= 0x1FF) {
  timer_res = 2;
 } else {
  DP_ERR(p_hwfn, "Invalid coalesce value - %d\n", coalesce);
  return -EINVAL;
 }
 timeset = (u8)(coalesce >> timer_res);

 rc = qed_int_set_timer_res(p_hwfn, p_ptt, timer_res,
       p_cid->sb_igu_id, 0);
 if (rc)
  goto out;

 address = BAR0_MAP_REG_USDM_RAM +
    USTORM_ETH_QUEUE_ZONE_OFFSET(p_cid->abs.queue_id);

 rc = qed_set_coalesce(p_hwfn, p_ptt, address, &eth_qzone,
         sizeof(struct ustorm_eth_queue_zone), timeset);
 if (rc)
  goto out;

out:
 return rc;
}
