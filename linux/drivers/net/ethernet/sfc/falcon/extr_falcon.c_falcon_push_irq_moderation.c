
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
struct ef4_channel {int channel; int irq_moderation_us; struct ef4_nic* efx; } ;
typedef int ef4_dword_t ;


 int BUILD_BUG_ON (int) ;
 int EF4_POPULATE_DWORD_2 (int ,int ,int ,int ,unsigned int) ;
 int FFE_BB_TIMER_MODE_DIS ;
 int FFE_BB_TIMER_MODE_INT_HLDOFF ;
 int FRF_AB_TC_TIMER_MODE ;
 int FRF_AB_TC_TIMER_VAL ;
 scalar_t__ FR_AA_TIMER_COMMAND_KER ;
 scalar_t__ FR_BZ_TIMER_COMMAND_P0 ;
 unsigned int ef4_usecs_to_ticks (struct ef4_nic*,int ) ;
 int ef4_writed_page_locked (struct ef4_nic*,int *,scalar_t__,int ) ;

__attribute__((used)) static void falcon_push_irq_moderation(struct ef4_channel *channel)
{
 ef4_dword_t timer_cmd;
 struct ef4_nic *efx = channel->efx;


 if (channel->irq_moderation_us) {
  unsigned int ticks;

  ticks = ef4_usecs_to_ticks(efx, channel->irq_moderation_us);
  EF4_POPULATE_DWORD_2(timer_cmd,
         FRF_AB_TC_TIMER_MODE,
         FFE_BB_TIMER_MODE_INT_HLDOFF,
         FRF_AB_TC_TIMER_VAL,
         ticks - 1);
 } else {
  EF4_POPULATE_DWORD_2(timer_cmd,
         FRF_AB_TC_TIMER_MODE,
         FFE_BB_TIMER_MODE_DIS,
         FRF_AB_TC_TIMER_VAL, 0);
 }
 BUILD_BUG_ON(FR_AA_TIMER_COMMAND_KER != FR_BZ_TIMER_COMMAND_P0);
 ef4_writed_page_locked(efx, &timer_cmd, FR_BZ_TIMER_COMMAND_P0,
          channel->channel);
}
