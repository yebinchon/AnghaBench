
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_ts_cqe {int timestamp_hi; int timestamp_lo; } ;
struct mlx4_cqe {int dummy; } ;


 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;

u64 mlx4_en_get_cqe_ts(struct mlx4_cqe *cqe)
{
 u64 hi, lo;
 struct mlx4_ts_cqe *ts_cqe = (struct mlx4_ts_cqe *)cqe;

 lo = (u64)be16_to_cpu(ts_cqe->timestamp_lo);
 hi = ((u64)be32_to_cpu(ts_cqe->timestamp_hi) + !lo) << 16;

 return hi | lo;
}
