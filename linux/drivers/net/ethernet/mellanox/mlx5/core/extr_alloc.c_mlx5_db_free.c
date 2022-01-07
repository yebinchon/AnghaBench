
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_3__* pgdir; } ;
struct mlx5_db {TYPE_1__ u; int index; } ;
struct TYPE_5__ {int pgdir_mutex; } ;
struct mlx5_core_dev {TYPE_2__ priv; int device; } ;
struct TYPE_6__ {int bitmap; int list; int db_dma; int db_page; } ;


 int PAGE_SIZE ;
 int __set_bit (int ,int ) ;
 int bitmap_free (int ) ;
 scalar_t__ bitmap_full (int ,int) ;
 int cache_line_size () ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int kfree (TYPE_3__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_db_free(struct mlx5_core_dev *dev, struct mlx5_db *db)
{
 u32 db_per_page = PAGE_SIZE / cache_line_size();

 mutex_lock(&dev->priv.pgdir_mutex);

 __set_bit(db->index, db->u.pgdir->bitmap);

 if (bitmap_full(db->u.pgdir->bitmap, db_per_page)) {
  dma_free_coherent(dev->device, PAGE_SIZE,
      db->u.pgdir->db_page, db->u.pgdir->db_dma);
  list_del(&db->u.pgdir->list);
  bitmap_free(db->u.pgdir->bitmap);
  kfree(db->u.pgdir);
 }

 mutex_unlock(&dev->priv.pgdir_mutex);
}
