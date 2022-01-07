
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_clock {int dummy; } ;
typedef int ktime_t ;



__attribute__((used)) static inline ktime_t mlx5_timecounter_cyc2time(struct mlx5_clock *clock,
      u64 timestamp)
{
 return 0;
}
