
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ advertised; scalar_t__ tx_lpi_timer; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
struct tg3 {int phy_flags; TYPE_1__ eee; } ;
struct ethtool_eee {scalar_t__ advertised; scalar_t__ tx_lpi_timer; scalar_t__ tx_lpi_enabled; } ;


 int TG3_PHYFLG_EEE_CAP ;
 int tg3_eee_pull_config (struct tg3*,struct ethtool_eee*) ;

__attribute__((used)) static bool tg3_phy_eee_config_ok(struct tg3 *tp)
{
 struct ethtool_eee eee;

 if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP))
  return 1;

 tg3_eee_pull_config(tp, &eee);

 if (tp->eee.eee_enabled) {
  if (tp->eee.advertised != eee.advertised ||
      tp->eee.tx_lpi_timer != eee.tx_lpi_timer ||
      tp->eee.tx_lpi_enabled != eee.tx_lpi_enabled)
   return 0;
 } else {

  if (eee.advertised)
   return 0;
 }

 return 1;
}
