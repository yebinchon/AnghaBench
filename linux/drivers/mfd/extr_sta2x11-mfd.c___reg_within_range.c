
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int __reg_within_range(unsigned int r,
         unsigned int start,
         unsigned int end)
{
 return ((r >= start) && (r <= end));
}
