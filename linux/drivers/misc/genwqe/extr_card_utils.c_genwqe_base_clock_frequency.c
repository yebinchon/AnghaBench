
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct genwqe_dev {int slu_unitcfg; } ;


 size_t ARRAY_SIZE (int const*) ;

int genwqe_base_clock_frequency(struct genwqe_dev *cd)
{
 u16 speed;
 static const int speed_grade[] = { 250, 200, 166, 175 };

 speed = (u16)((cd->slu_unitcfg >> 28) & 0x0full);
 if (speed >= ARRAY_SIZE(speed_grade))
  return 0;

 return speed_grade[speed];
}
