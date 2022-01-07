
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static inline int mlx5_wq_cyc_cc_bigger(u16 cc1, u16 cc2)
{
 int equal = (cc1 == cc2);
 int smaller = 0x8000 & (cc1 - cc2);

 return !equal && !smaller;
}
