
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct adapter* devdata; } ;
struct TYPE_2__ {int trip_temp; } ;
struct adapter {TYPE_1__ ch_thermal; } ;


 int EINVAL ;

__attribute__((used)) static int cxgb4_thermal_get_trip_temp(struct thermal_zone_device *tzdev,
           int trip, int *temp)
{
 struct adapter *adap = tzdev->devdata;

 if (!adap->ch_thermal.trip_temp)
  return -EINVAL;

 *temp = adap->ch_thermal.trip_temp;
 return 0;
}
