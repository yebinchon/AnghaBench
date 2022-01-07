
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 incr_index(u32 index, u32 count, u32 max)
{
 if ((index + count) >= max)
  index = index + count - max;
 else
  index += count;

 return index;
}
