
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5_wq_cyc {int dummy; } ;


 scalar_t__ mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,scalar_t__) ;

__attribute__((used)) static inline bool
mlx5e_wqc_has_room_for(struct mlx5_wq_cyc *wq, u16 cc, u16 pc, u16 n)
{
 return (mlx5_wq_cyc_ctr2ix(wq, cc - pc) >= n) || (cc == pc);
}
