
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int cpu_to_be64s (int *) ;

__attribute__((used)) static inline void octeon_swap_8B_data(u64 *data, u32 blocks)
{
 while (blocks) {
  cpu_to_be64s(data);
  blocks--;
  data++;
 }
}
