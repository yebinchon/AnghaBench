
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {int dummy; } ;


 int SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ ;
 int smiapp_replace_limit (struct smiapp_sensor*,int ,int) ;

__attribute__((used)) static int tcm8500md_limits(struct smiapp_sensor *sensor)
{
 smiapp_replace_limit(sensor, SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ, 2700000);

 return 0;
}
