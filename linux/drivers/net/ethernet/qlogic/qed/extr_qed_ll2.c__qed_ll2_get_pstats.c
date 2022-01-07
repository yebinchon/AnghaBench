
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_ll2_stats {int sent_bcast_pkts; int sent_mcast_pkts; int sent_ucast_pkts; int sent_bcast_bytes; int sent_mcast_bytes; int sent_ucast_bytes; } ;
struct qed_ll2_info {int tx_stats_id; } ;
struct qed_hwfn {int dummy; } ;
struct core_ll2_pstorm_per_queue_stat {int sent_bcast_pkts; int sent_mcast_pkts; int sent_ucast_pkts; int sent_bcast_bytes; int sent_mcast_bytes; int sent_ucast_bytes; } ;
typedef int pstats ;


 scalar_t__ BAR0_MAP_REG_PSDM_RAM ;
 scalar_t__ CORE_LL2_PSTORM_PER_QUEUE_STAT_OFFSET (int ) ;
 scalar_t__ HILO_64_REGPAIR (int ) ;
 int memset (struct core_ll2_pstorm_per_queue_stat*,int ,int) ;
 int qed_memcpy_from (struct qed_hwfn*,struct qed_ptt*,struct core_ll2_pstorm_per_queue_stat*,scalar_t__,int) ;

__attribute__((used)) static void _qed_ll2_get_pstats(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    struct qed_ll2_info *p_ll2_conn,
    struct qed_ll2_stats *p_stats)
{
 struct core_ll2_pstorm_per_queue_stat pstats;
 u8 stats_id = p_ll2_conn->tx_stats_id;
 u32 pstats_addr;

 memset(&pstats, 0, sizeof(pstats));
 pstats_addr = BAR0_MAP_REG_PSDM_RAM +
        CORE_LL2_PSTORM_PER_QUEUE_STAT_OFFSET(stats_id);
 qed_memcpy_from(p_hwfn, p_ptt, &pstats, pstats_addr, sizeof(pstats));

 p_stats->sent_ucast_bytes += HILO_64_REGPAIR(pstats.sent_ucast_bytes);
 p_stats->sent_mcast_bytes += HILO_64_REGPAIR(pstats.sent_mcast_bytes);
 p_stats->sent_bcast_bytes += HILO_64_REGPAIR(pstats.sent_bcast_bytes);
 p_stats->sent_ucast_pkts += HILO_64_REGPAIR(pstats.sent_ucast_pkts);
 p_stats->sent_mcast_pkts += HILO_64_REGPAIR(pstats.sent_mcast_pkts);
 p_stats->sent_bcast_pkts += HILO_64_REGPAIR(pstats.sent_bcast_pkts);
}
