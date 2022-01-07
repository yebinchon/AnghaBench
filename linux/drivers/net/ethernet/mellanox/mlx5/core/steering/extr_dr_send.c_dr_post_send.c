
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct postsend_info {int read; int rkey; int remote_addr; int write; } ;
struct mlx5dr_qp {int dummy; } ;


 int MLX5_OPCODE_RDMA_READ ;
 int MLX5_OPCODE_RDMA_WRITE ;
 int dr_rdma_segments (struct mlx5dr_qp*,int ,int ,int *,int ,int) ;

__attribute__((used)) static void dr_post_send(struct mlx5dr_qp *dr_qp, struct postsend_info *send_info)
{
 dr_rdma_segments(dr_qp, send_info->remote_addr, send_info->rkey,
    &send_info->write, MLX5_OPCODE_RDMA_WRITE, 0);
 dr_rdma_segments(dr_qp, send_info->remote_addr, send_info->rkey,
    &send_info->read, MLX5_OPCODE_RDMA_READ, 1);
}
