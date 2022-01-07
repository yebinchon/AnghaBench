
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_tx {int ts_flags; } ;


 int TX_TS_FLAG_ONE_STEP_SYNC ;
 int TX_TS_FLAG_TIMESTAMPING_ENABLED ;

void lan743x_tx_set_timestamping_mode(struct lan743x_tx *tx,
          bool enable_timestamping,
          bool enable_onestep_sync)
{
 if (enable_timestamping)
  tx->ts_flags |= TX_TS_FLAG_TIMESTAMPING_ENABLED;
 else
  tx->ts_flags &= ~TX_TS_FLAG_TIMESTAMPING_ENABLED;
 if (enable_onestep_sync)
  tx->ts_flags |= TX_TS_FLAG_ONE_STEP_SYNC;
 else
  tx->ts_flags &= ~TX_TS_FLAG_ONE_STEP_SYNC;
}
