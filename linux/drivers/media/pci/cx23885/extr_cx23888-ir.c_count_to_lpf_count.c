
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 unsigned int FILTR_LPF ;

__attribute__((used)) static inline u16 count_to_lpf_count(unsigned int d)
{
 if (d > FILTR_LPF)
  d = FILTR_LPF;
 else if (d < 4)
  d = 0;
 return (u16) d;
}
