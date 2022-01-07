
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline void efx_update_diff_stat(u64 *stat, u64 diff)
{
 if ((s64)(diff - *stat) > 0)
  *stat = diff;
}
