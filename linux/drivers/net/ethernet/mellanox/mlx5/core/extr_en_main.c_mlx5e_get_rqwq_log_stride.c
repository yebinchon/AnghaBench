
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5e_rx_wqe_ll {int dummy; } ;
struct mlx5e_rx_wqe_cyc {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;



 int order_base_2 (int) ;

__attribute__((used)) static inline u8 mlx5e_get_rqwq_log_stride(u8 wq_type, int ndsegs)
{
 int sz = sizeof(struct mlx5_wqe_data_seg) * ndsegs;

 switch (wq_type) {
 case 128:
  sz += sizeof(struct mlx5e_rx_wqe_ll);
  break;
 default:
  sz += sizeof(struct mlx5e_rx_wqe_cyc);
 }

 return order_base_2(sz);
}
