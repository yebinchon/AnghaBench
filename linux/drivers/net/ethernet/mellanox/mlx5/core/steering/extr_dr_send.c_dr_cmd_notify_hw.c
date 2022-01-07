
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pc; } ;
struct TYPE_5__ {int * db; } ;
struct TYPE_6__ {TYPE_1__ sq; } ;
struct mlx5dr_qp {TYPE_4__* uar; TYPE_3__ sq; TYPE_2__ wq; } ;
struct TYPE_8__ {scalar_t__ map; } ;


 scalar_t__ MLX5_BF_OFFSET ;
 int cpu_to_be32 (int) ;
 int dma_wmb () ;
 int mlx5_write64 (void*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void dr_cmd_notify_hw(struct mlx5dr_qp *dr_qp, void *ctrl)
{
 dma_wmb();
 *dr_qp->wq.sq.db = cpu_to_be32(dr_qp->sq.pc & 0xfffff);


 wmb();

 mlx5_write64(ctrl, dr_qp->uar->map + MLX5_BF_OFFSET);
}
