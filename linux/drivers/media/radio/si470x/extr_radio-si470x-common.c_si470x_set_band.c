
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int band; int* registers; int (* set_register ) (struct si470x_device*,size_t) ;} ;


 size_t SYSCONFIG2 ;
 int SYSCONFIG2_BAND ;
 int stub1 (struct si470x_device*,size_t) ;

__attribute__((used)) static int si470x_set_band(struct si470x_device *radio, int band)
{
 if (radio->band == band)
  return 0;

 radio->band = band;
 radio->registers[SYSCONFIG2] &= ~SYSCONFIG2_BAND;
 radio->registers[SYSCONFIG2] |= radio->band << 6;
 return radio->set_register(radio, SYSCONFIG2);
}
