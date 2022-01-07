
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int irq_mod_step_us; int irq_rx_moderation_us; TYPE_1__* type; } ;
struct ef4_channel {scalar_t__ irq_mod_score; int irq_moderation_us; scalar_t__ irq_count; } ;
struct TYPE_2__ {int (* push_irq_moderation ) (struct ef4_channel*) ;} ;


 scalar_t__ irq_adapt_high_thresh ;
 scalar_t__ irq_adapt_low_thresh ;
 int stub1 (struct ef4_channel*) ;
 int stub2 (struct ef4_channel*) ;

__attribute__((used)) static void ef4_update_irq_mod(struct ef4_nic *efx, struct ef4_channel *channel)
{
 int step = efx->irq_mod_step_us;

 if (channel->irq_mod_score < irq_adapt_low_thresh) {
  if (channel->irq_moderation_us > step) {
   channel->irq_moderation_us -= step;
   efx->type->push_irq_moderation(channel);
  }
 } else if (channel->irq_mod_score > irq_adapt_high_thresh) {
  if (channel->irq_moderation_us <
      efx->irq_rx_moderation_us) {
   channel->irq_moderation_us += step;
   efx->type->push_irq_moderation(channel);
  }
 }

 channel->irq_count = 0;
 channel->irq_mod_score = 0;
}
