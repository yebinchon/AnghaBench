
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et8ek8_sensor {int dummy; } ;


 int et8ek8_power_off (struct et8ek8_sensor*) ;
 int et8ek8_power_on (struct et8ek8_sensor*) ;

__attribute__((used)) static int __et8ek8_set_power(struct et8ek8_sensor *sensor, bool on)
{
 return on ? et8ek8_power_on(sensor) : et8ek8_power_off(sensor);
}
