
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; } ;


 size_t SYSCONFIG2 ;
 int SYSCONFIG2_SPACE ;

__attribute__((used)) static unsigned int si470x_get_step(struct si470x_device *radio)
{

 switch ((radio->registers[SYSCONFIG2] & SYSCONFIG2_SPACE) >> 4) {

 case 0:
  return 200 * 16;

 case 1:
  return 100 * 16;

 default:
  return 50 * 16;
 }
}
