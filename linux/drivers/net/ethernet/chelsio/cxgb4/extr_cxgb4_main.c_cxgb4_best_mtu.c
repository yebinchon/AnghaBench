
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMTUS ;

unsigned int cxgb4_best_mtu(const unsigned short *mtus, unsigned short mtu,
       unsigned int *idx)
{
 unsigned int i = 0;

 while (i < NMTUS - 1 && mtus[i + 1] <= mtu)
  ++i;
 if (idx)
  *idx = i;
 return mtus[i];
}
