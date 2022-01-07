
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_vf_immed_vlan_work {int qos_vport; } ;
struct TYPE_2__ {int qos_vport; } ;
struct mlx4_update_qp_context {TYPE_1__ qp_context; int qp_mask; } ;


 unsigned long long MLX4_UPD_QP_MASK_QOS_VPP ;
 int cpu_to_be64 (unsigned long long) ;

__attribute__((used)) static void update_qos_vpp(struct mlx4_update_qp_context *ctx,
      struct mlx4_vf_immed_vlan_work *work)
{
 ctx->qp_mask |= cpu_to_be64(1ULL << MLX4_UPD_QP_MASK_QOS_VPP);
 ctx->qp_context.qos_vport = work->qos_vport;
}
