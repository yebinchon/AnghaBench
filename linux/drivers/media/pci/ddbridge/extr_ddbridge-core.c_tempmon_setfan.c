
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ddb_link {int overtemperature_error; int* temp_tab; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int TEMPMON_CONTROL ;
 int TEMPMON_CONTROL_OVERTEMP ;
 int TEMPMON_FANCONTROL ;
 int TEMPMON_SENSOR0 ;
 int TEMPMON_SENSOR1 ;
 int ddblreadl (struct ddb_link*,int ) ;
 int ddblwritel (struct ddb_link*,int,int ) ;
 int dev_info (int ,char*) ;

__attribute__((used)) static void tempmon_setfan(struct ddb_link *link)
{
 u32 temp, temp2, pwm;

 if ((ddblreadl(link, TEMPMON_CONTROL) &
     TEMPMON_CONTROL_OVERTEMP) != 0) {
  dev_info(link->dev->dev, "Over temperature condition\n");
  link->overtemperature_error = 1;
 }
 temp = (ddblreadl(link, TEMPMON_SENSOR0) >> 8) & 0xFF;
 if (temp & 0x80)
  temp = 0;
 temp2 = (ddblreadl(link, TEMPMON_SENSOR1) >> 8) & 0xFF;
 if (temp2 & 0x80)
  temp2 = 0;
 if (temp2 > temp)
  temp = temp2;

 pwm = (ddblreadl(link, TEMPMON_FANCONTROL) >> 8) & 0x0F;
 if (pwm > 10)
  pwm = 10;

 if (temp >= link->temp_tab[pwm]) {
  while (pwm < 10 && temp >= link->temp_tab[pwm + 1])
   pwm += 1;
 } else {
  while (pwm > 1 && temp < link->temp_tab[pwm - 2])
   pwm -= 1;
 }
 ddblwritel(link, (pwm << 8), TEMPMON_FANCONTROL);
}
