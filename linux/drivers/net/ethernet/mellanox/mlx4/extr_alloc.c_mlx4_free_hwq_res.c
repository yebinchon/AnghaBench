
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_hwq_resources {int db; int buf; int mtt; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_buf_free (struct mlx4_dev*,int,int *) ;
 int mlx4_db_free (struct mlx4_dev*,int *) ;
 int mlx4_mtt_cleanup (struct mlx4_dev*,int *) ;

void mlx4_free_hwq_res(struct mlx4_dev *dev, struct mlx4_hwq_resources *wqres,
         int size)
{
 mlx4_mtt_cleanup(dev, &wqres->mtt);
 mlx4_buf_free(dev, size, &wqres->buf);
 mlx4_db_free(dev, &wqres->db);
}
