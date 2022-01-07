
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int tstats ;
struct qed_ptt {int dummy; } ;
struct qed_ll2_stats {int no_buff_discard; int packet_too_big_discard; } ;
struct qed_ll2_info {int queue_id; } ;
struct qed_hwfn {int dummy; } ;
struct core_ll2_tstorm_per_queue_stat {int no_buff_discard; int packet_too_big_discard; } ;


 scalar_t__ BAR0_MAP_REG_TSDM_RAM ;
 scalar_t__ CORE_LL2_TSTORM_PER_QUEUE_STAT_OFFSET (int ) ;
 scalar_t__ HILO_64_REGPAIR (int ) ;
 int memset (struct core_ll2_tstorm_per_queue_stat*,int ,int) ;
 int qed_memcpy_from (struct qed_hwfn*,struct qed_ptt*,struct core_ll2_tstorm_per_queue_stat*,scalar_t__,int) ;

__attribute__((used)) static void _qed_ll2_get_tstats(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    struct qed_ll2_info *p_ll2_conn,
    struct qed_ll2_stats *p_stats)
{
 struct core_ll2_tstorm_per_queue_stat tstats;
 u8 qid = p_ll2_conn->queue_id;
 u32 tstats_addr;

 memset(&tstats, 0, sizeof(tstats));
 tstats_addr = BAR0_MAP_REG_TSDM_RAM +
        CORE_LL2_TSTORM_PER_QUEUE_STAT_OFFSET(qid);
 qed_memcpy_from(p_hwfn, p_ptt, &tstats, tstats_addr, sizeof(tstats));

 p_stats->packet_too_big_discard +=
   HILO_64_REGPAIR(tstats.packet_too_big_discard);
 p_stats->no_buff_discard += HILO_64_REGPAIR(tstats.no_buff_discard);
}
