
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ionic_lif {int state; } ;


 int IONIC_LIF_SW_DEBUG_STATS ;
 int IONIC_LIF_UP ;
 int IONIC_MAX_NUM_NAPI_CNTR ;
 int IONIC_MAX_NUM_SG_CNTR ;
 int IONIC_NUM_DBG_CQ_STATS ;
 int IONIC_NUM_DBG_INTR_STATS ;
 int IONIC_NUM_DBG_NAPI_STATS ;
 scalar_t__ IONIC_NUM_LIF_STATS ;
 int IONIC_NUM_RX_STATS ;
 int IONIC_NUM_TX_Q_STATS ;
 int IONIC_NUM_TX_STATS ;
 int MAX_Q (struct ionic_lif*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static u64 ionic_sw_stats_get_count(struct ionic_lif *lif)
{
 u64 total = 0;


 total += IONIC_NUM_LIF_STATS;


 total += MAX_Q(lif) * IONIC_NUM_TX_STATS;


 total += MAX_Q(lif) * IONIC_NUM_RX_STATS;

 if (test_bit(IONIC_LIF_UP, lif->state) &&
     test_bit(IONIC_LIF_SW_DEBUG_STATS, lif->state)) {

  total += MAX_Q(lif) * (IONIC_NUM_DBG_CQ_STATS +
          IONIC_NUM_TX_Q_STATS +
          IONIC_NUM_DBG_INTR_STATS +
          IONIC_MAX_NUM_SG_CNTR);


  total += MAX_Q(lif) * (IONIC_NUM_DBG_CQ_STATS +
          IONIC_NUM_DBG_INTR_STATS +
          IONIC_NUM_DBG_NAPI_STATS +
          IONIC_MAX_NUM_NAPI_CNTR);
 }

 return total;
}
