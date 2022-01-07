
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int PTP_TX_MOD ;
 int PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;

__attribute__((used)) static void lan743x_ptp_set_sync_ts_insert(struct lan743x_adapter *adapter,
        bool ts_insert_enable)
{
 u32 ptp_tx_mod = lan743x_csr_read(adapter, PTP_TX_MOD);

 if (ts_insert_enable)
  ptp_tx_mod |= PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_;
 else
  ptp_tx_mod &= ~PTP_TX_MOD_TX_PTP_SYNC_TS_INSERT_;

 lan743x_csr_write(adapter, PTP_TX_MOD, ptp_tx_mod);
}
