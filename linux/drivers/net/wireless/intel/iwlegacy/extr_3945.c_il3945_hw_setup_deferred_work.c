
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thermal_periodic; } ;
struct il_priv {TYPE_1__ _3945; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int il3945_bg_reg_txpower_periodic ;

void
il3945_hw_setup_deferred_work(struct il_priv *il)
{
 INIT_DELAYED_WORK(&il->_3945.thermal_periodic,
     il3945_bg_reg_txpower_periodic);
}
