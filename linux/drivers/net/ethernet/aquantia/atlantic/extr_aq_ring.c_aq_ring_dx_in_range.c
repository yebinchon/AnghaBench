
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool aq_ring_dx_in_range(unsigned int h, unsigned int i,
           unsigned int t)
{
 return (h < t) ? ((h < i) && (i < t)) : ((h < i) || (i < t));
}
