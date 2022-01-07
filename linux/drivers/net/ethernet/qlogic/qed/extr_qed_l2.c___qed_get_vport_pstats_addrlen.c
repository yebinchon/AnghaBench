
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int address; int len; } ;
struct TYPE_5__ {TYPE_1__ pstats; } ;
struct TYPE_6__ {TYPE_2__ stats_info; } ;
struct pfvf_acquire_resp_tlv {TYPE_3__ pfdev_info; } ;
struct qed_vf_iov {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; int cdev; } ;
struct eth_pstorm_per_queue_stat {int dummy; } ;


 int BAR0_MAP_REG_PSDM_RAM ;
 scalar_t__ IS_PF (int ) ;
 int PSTORM_QUEUE_STAT_OFFSET (int ) ;

__attribute__((used)) static void __qed_get_vport_pstats_addrlen(struct qed_hwfn *p_hwfn,
        u32 *p_addr,
        u32 *p_len, u16 statistics_bin)
{
 if (IS_PF(p_hwfn->cdev)) {
  *p_addr = BAR0_MAP_REG_PSDM_RAM +
      PSTORM_QUEUE_STAT_OFFSET(statistics_bin);
  *p_len = sizeof(struct eth_pstorm_per_queue_stat);
 } else {
  struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
  struct pfvf_acquire_resp_tlv *p_resp = &p_iov->acquire_resp;

  *p_addr = p_resp->pfdev_info.stats_info.pstats.address;
  *p_len = p_resp->pfdev_info.stats_info.pstats.len;
 }
}
