
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int DMAC_CHANNEL_STATE_SET (int,int) ;
 int DMAC_CMD ;
 int DMAC_CMD_START_T_ (int) ;
 int DMAC_CMD_STOP_T_ (int) ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;

__attribute__((used)) static int lan743x_dmac_tx_get_state(struct lan743x_adapter *adapter,
         int tx_channel)
{
 u32 dmac_cmd = 0;

 dmac_cmd = lan743x_csr_read(adapter, DMAC_CMD);
 return DMAC_CHANNEL_STATE_SET((dmac_cmd &
          DMAC_CMD_START_T_(tx_channel)),
          (dmac_cmd &
          DMAC_CMD_STOP_T_(tx_channel)));
}
