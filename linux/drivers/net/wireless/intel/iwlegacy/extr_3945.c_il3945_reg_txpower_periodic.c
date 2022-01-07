
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thermal_periodic; } ;
struct il_priv {TYPE_1__ _3945; int workqueue; } ;


 int HZ ;
 int REG_RECALIB_PERIOD ;
 int il3945_hw_reg_comp_txpower_temp (struct il_priv*) ;
 int il3945_is_temp_calib_needed (struct il_priv*) ;
 int queue_delayed_work (int ,int *,int) ;

void
il3945_reg_txpower_periodic(struct il_priv *il)
{


 if (!il3945_is_temp_calib_needed(il))
  goto reschedule;




 il3945_hw_reg_comp_txpower_temp(il);

reschedule:
 queue_delayed_work(il->workqueue, &il->_3945.thermal_periodic,
      REG_RECALIB_PERIOD * HZ);
}
