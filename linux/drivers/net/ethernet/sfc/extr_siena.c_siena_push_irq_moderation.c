
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_channel {int channel; struct efx_nic* efx; int irq_moderation_us; } ;
typedef int efx_dword_t ;


 int EFX_POPULATE_DWORD_2 (int ,int ,int ,int ,unsigned int) ;
 int FFE_CZ_TIMER_MODE_DIS ;
 int FFE_CZ_TIMER_MODE_INT_HLDOFF ;
 int FRF_CZ_TC_TIMER_MODE ;
 int FRF_CZ_TC_TIMER_VAL ;
 int FR_BZ_TIMER_COMMAND_P0 ;
 unsigned int efx_usecs_to_ticks (struct efx_nic*,int ) ;
 int efx_writed_page_locked (struct efx_nic*,int *,int ,int ) ;

__attribute__((used)) static void siena_push_irq_moderation(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 efx_dword_t timer_cmd;

 if (channel->irq_moderation_us) {
  unsigned int ticks;

  ticks = efx_usecs_to_ticks(efx, channel->irq_moderation_us);
  EFX_POPULATE_DWORD_2(timer_cmd,
         FRF_CZ_TC_TIMER_MODE,
         FFE_CZ_TIMER_MODE_INT_HLDOFF,
         FRF_CZ_TC_TIMER_VAL,
         ticks - 1);
 } else {
  EFX_POPULATE_DWORD_2(timer_cmd,
         FRF_CZ_TC_TIMER_MODE,
         FFE_CZ_TIMER_MODE_DIS,
         FRF_CZ_TC_TIMER_VAL, 0);
 }
 efx_writed_page_locked(channel->efx, &timer_cmd, FR_BZ_TIMER_COMMAND_P0,
          channel->channel);
}
