
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tzdev; } ;
struct adapter {TYPE_1__ ch_thermal; } ;


 int thermal_zone_device_unregister (scalar_t__) ;

int cxgb4_thermal_remove(struct adapter *adap)
{
 if (adap->ch_thermal.tzdev)
  thermal_zone_device_unregister(adap->ch_thermal.tzdev);
 return 0;
}
