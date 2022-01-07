
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int net_dev; int rx_reset; } ;
struct ef4_channel {int channel; struct ef4_nic* efx; } ;
typedef int ef4_qword_t ;


 unsigned int EF4_QWORD_FIELD (int ,int ) ;
 int EF4_WORKAROUND_6555 (struct ef4_nic*) ;
 int FSF_AZ_DRIVER_EV_SUBCODE ;
 int FSF_AZ_DRIVER_EV_SUBDATA ;
 int RESET_TYPE_DISABLE ;
 int RESET_TYPE_DMA_ERROR ;
 int RESET_TYPE_RX_RECOVERY ;
 int atomic_inc (int *) ;
 int ef4_farch_handle_rx_flush_done (struct ef4_nic*,int *) ;
 int ef4_farch_handle_tx_flush_done (struct ef4_nic*,int *) ;
 int ef4_schedule_reset (struct ef4_nic*,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,unsigned int) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,unsigned int,...) ;
 int netif_vdbg (struct ef4_nic*,int ,int ,char*,int ,...) ;
 int rx_err ;
 int tx_err ;

__attribute__((used)) static void
ef4_farch_handle_driver_event(struct ef4_channel *channel, ef4_qword_t *event)
{
 struct ef4_nic *efx = channel->efx;
 unsigned int ev_sub_code;
 unsigned int ev_sub_data;

 ev_sub_code = EF4_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBCODE);
 ev_sub_data = EF4_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBDATA);

 switch (ev_sub_code) {
 case 131:
  netif_vdbg(efx, hw, efx->net_dev, "channel %d TXQ %d flushed\n",
      channel->channel, ev_sub_data);
  ef4_farch_handle_tx_flush_done(efx, event);
  break;
 case 134:
  netif_vdbg(efx, hw, efx->net_dev, "channel %d RXQ %d flushed\n",
      channel->channel, ev_sub_data);
  ef4_farch_handle_rx_flush_done(efx, event);
  break;
 case 135:
  netif_dbg(efx, hw, efx->net_dev,
     "channel %d EVQ %d initialised\n",
     channel->channel, ev_sub_data);
  break;
 case 133:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d SRAM update done\n", channel->channel);
  break;
 case 130:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d RXQ %d wakeup event\n",
      channel->channel, ev_sub_data);
  break;
 case 132:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d RX queue %d timer expired\n",
      channel->channel, ev_sub_data);
  break;
 case 136:
  netif_err(efx, rx_err, efx->net_dev,
     "channel %d seen DRIVER RX_RESET event. "
   "Resetting.\n", channel->channel);
  atomic_inc(&efx->rx_reset);
  ef4_schedule_reset(efx,
       EF4_WORKAROUND_6555(efx) ?
       RESET_TYPE_RX_RECOVERY :
       RESET_TYPE_DISABLE);
  break;
 case 129:
  netif_err(efx, rx_err, efx->net_dev,
     "RX DMA Q %d reports descriptor fetch error."
     " RX Q %d is disabled.\n", ev_sub_data,
     ev_sub_data);
  ef4_schedule_reset(efx, RESET_TYPE_DMA_ERROR);
  break;
 case 128:
  netif_err(efx, tx_err, efx->net_dev,
     "TX DMA Q %d reports descriptor fetch error."
     " TX Q %d is disabled.\n", ev_sub_data,
     ev_sub_data);
  ef4_schedule_reset(efx, RESET_TYPE_DMA_ERROR);
  break;
 default:
  netif_vdbg(efx, hw, efx->net_dev,
      "channel %d unknown driver event code %d "
      "data %04x\n", channel->channel, ev_sub_code,
      ev_sub_data);
  break;
 }
}
