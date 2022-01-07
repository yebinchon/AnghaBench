
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mutex {int dummy; } ;
struct mlx5_uars_page {unsigned int fp_avail; unsigned long* fp_bitmap; unsigned int reg_avail; unsigned long* reg_bitmap; int ref_count; int list; } ;
struct mlx5_sq_bfreg {struct mlx5_uars_page* up; scalar_t__ wc; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {struct mutex lock; struct list_head list; } ;
struct TYPE_5__ {struct mutex lock; struct list_head list; } ;
struct mlx5_bfreg_data {TYPE_3__ reg_head; TYPE_2__ wc_head; } ;
struct TYPE_4__ {struct mlx5_bfreg_data bfregs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 unsigned int MLX5_BFREGS_PER_UAR ;
 unsigned int MLX5_NON_FP_BFREGS_PER_UAR ;
 unsigned int addr_to_dbi_in_syspage (struct mlx5_core_dev*,struct mlx5_uars_page*,struct mlx5_sq_bfreg*) ;
 int kref_put (int *,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int set_bit (unsigned int,unsigned long*) ;
 int up_rel_func ;

void mlx5_free_bfreg(struct mlx5_core_dev *mdev, struct mlx5_sq_bfreg *bfreg)
{
 struct mlx5_bfreg_data *bfregs;
 struct mlx5_uars_page *up;
 struct mutex *lock;
 unsigned int dbi;
 bool fp;
 unsigned int *avail;
 unsigned long *bitmap;
 struct list_head *head;

 bfregs = &mdev->priv.bfregs;
 if (bfreg->wc) {
  head = &bfregs->wc_head.list;
  lock = &bfregs->wc_head.lock;
 } else {
  head = &bfregs->reg_head.list;
  lock = &bfregs->reg_head.lock;
 }
 up = bfreg->up;
 dbi = addr_to_dbi_in_syspage(mdev, up, bfreg);
 fp = (dbi % MLX5_BFREGS_PER_UAR) >= MLX5_NON_FP_BFREGS_PER_UAR;
 if (fp) {
  avail = &up->fp_avail;
  bitmap = up->fp_bitmap;
 } else {
  avail = &up->reg_avail;
  bitmap = up->reg_bitmap;
 }
 mutex_lock(lock);
 (*avail)++;
 set_bit(dbi, bitmap);
 if (*avail == 1)
  list_add_tail(&up->list, head);

 kref_put(&up->ref_count, up_rel_func);
 mutex_unlock(lock);
}
