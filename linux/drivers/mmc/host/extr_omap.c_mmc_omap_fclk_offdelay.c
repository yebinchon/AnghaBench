
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_slot {scalar_t__ fclk_freq; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ fclk_enabled; } ;


 unsigned long DIV_ROUND_UP (int ,scalar_t__) ;
 int NSEC_PER_SEC ;
 int ndelay (int) ;

__attribute__((used)) static void mmc_omap_fclk_offdelay(struct mmc_omap_slot *slot)
{
 unsigned long tick_ns;

 if (slot != ((void*)0) && slot->host->fclk_enabled && slot->fclk_freq > 0) {
  tick_ns = DIV_ROUND_UP(NSEC_PER_SEC, slot->fclk_freq);
  ndelay(8 * tick_ns);
 }
}
