
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct genwqe_dev {int slu_unitcfg; } ;


 size_t ARRAY_SIZE (int const*) ;

__attribute__((used)) static int genwqe_T_psec(struct genwqe_dev *cd)
{
 u16 speed;
 static const int T[] = { 4000, 5000, 6000, 5714 };

 speed = (u16)((cd->slu_unitcfg >> 28) & 0x0full);
 if (speed >= ARRAY_SIZE(T))
  return -1;

 return T[speed];
}
