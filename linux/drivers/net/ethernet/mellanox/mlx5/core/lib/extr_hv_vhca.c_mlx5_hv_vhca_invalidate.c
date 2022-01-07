
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_hv_vhca_work {int invalidate_work; int block_mask; struct mlx5_hv_vhca* hv_vhca; } ;
struct mlx5_hv_vhca {int work_queue; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct mlx5_hv_vhca_work* kzalloc (int,int ) ;
 int mlx5_hv_vhca_invalidate_work ;
 int queue_work (int ,int *) ;

void mlx5_hv_vhca_invalidate(void *context, u64 block_mask)
{
 struct mlx5_hv_vhca *hv_vhca = (struct mlx5_hv_vhca *)context;
 struct mlx5_hv_vhca_work *work;

 work = kzalloc(sizeof(*work), GFP_ATOMIC);
 if (!work)
  return;

 INIT_WORK(&work->invalidate_work, mlx5_hv_vhca_invalidate_work);
 work->hv_vhca = hv_vhca;
 work->block_mask = block_mask;

 queue_work(hv_vhca->work_queue, &work->invalidate_work);
}
