
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool geq_margin(unsigned d1, unsigned d2, unsigned margin)
{
 return d1 > (d2 - margin);
}
