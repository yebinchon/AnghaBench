
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_ctrl {int db; int mdev; int buf; } ;


 int mlx5_db_free (int ,int *) ;
 int mlx5_frag_buf_free (int ,int *) ;

void mlx5_wq_destroy(struct mlx5_wq_ctrl *wq_ctrl)
{
 mlx5_frag_buf_free(wq_ctrl->mdev, &wq_ctrl->buf);
 mlx5_db_free(wq_ctrl->mdev, &wq_ctrl->db);
}
