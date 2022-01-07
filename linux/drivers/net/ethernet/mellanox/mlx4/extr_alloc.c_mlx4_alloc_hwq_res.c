
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* db; } ;
struct TYPE_7__ {int page_shift; int npages; } ;
struct mlx4_hwq_resources {TYPE_1__ db; TYPE_3__ buf; int mtt; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_buf_direct_alloc (struct mlx4_dev*,int,TYPE_3__*) ;
 int mlx4_buf_free (struct mlx4_dev*,int,TYPE_3__*) ;
 int mlx4_buf_write_mtt (struct mlx4_dev*,int *,TYPE_3__*) ;
 int mlx4_db_alloc (struct mlx4_dev*,TYPE_1__*,int) ;
 int mlx4_db_free (struct mlx4_dev*,TYPE_1__*) ;
 int mlx4_mtt_cleanup (struct mlx4_dev*,int *) ;
 int mlx4_mtt_init (struct mlx4_dev*,int ,int ,int *) ;

int mlx4_alloc_hwq_res(struct mlx4_dev *dev, struct mlx4_hwq_resources *wqres,
         int size)
{
 int err;

 err = mlx4_db_alloc(dev, &wqres->db, 1);
 if (err)
  return err;

 *wqres->db.db = 0;

 err = mlx4_buf_direct_alloc(dev, size, &wqres->buf);
 if (err)
  goto err_db;

 err = mlx4_mtt_init(dev, wqres->buf.npages, wqres->buf.page_shift,
       &wqres->mtt);
 if (err)
  goto err_buf;

 err = mlx4_buf_write_mtt(dev, &wqres->mtt, &wqres->buf);
 if (err)
  goto err_mtt;

 return 0;

err_mtt:
 mlx4_mtt_cleanup(dev, &wqres->mtt);
err_buf:
 mlx4_buf_free(dev, size, &wqres->buf);
err_db:
 mlx4_db_free(dev, &wqres->db);

 return err;
}
