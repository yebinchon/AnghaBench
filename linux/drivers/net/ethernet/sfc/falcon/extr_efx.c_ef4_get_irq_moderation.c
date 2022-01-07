
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int irq_rx_adaptive; unsigned int irq_rx_moderation_us; size_t tx_channel_offset; struct ef4_channel** channel; } ;
struct ef4_channel {unsigned int irq_moderation_us; } ;



void ef4_get_irq_moderation(struct ef4_nic *efx, unsigned int *tx_usecs,
       unsigned int *rx_usecs, bool *rx_adaptive)
{
 *rx_adaptive = efx->irq_rx_adaptive;
 *rx_usecs = efx->irq_rx_moderation_us;





 if (efx->tx_channel_offset == 0) {
  *tx_usecs = *rx_usecs;
 } else {
  struct ef4_channel *tx_channel;

  tx_channel = efx->channel[efx->tx_channel_offset];
  *tx_usecs = tx_channel->irq_moderation_us;
 }
}
