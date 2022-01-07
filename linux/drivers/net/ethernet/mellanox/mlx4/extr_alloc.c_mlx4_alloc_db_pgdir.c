
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_db_pgdir {int db_page; int db_dma; int order1; int * bits; int order0; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int MLX4_DB_PER_PAGE ;
 int PAGE_SIZE ;
 int bitmap_fill (int ,int) ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int kfree (struct mlx4_db_pgdir*) ;
 struct mlx4_db_pgdir* kzalloc (int,int ) ;

__attribute__((used)) static struct mlx4_db_pgdir *mlx4_alloc_db_pgdir(struct device *dma_device)
{
 struct mlx4_db_pgdir *pgdir;

 pgdir = kzalloc(sizeof(*pgdir), GFP_KERNEL);
 if (!pgdir)
  return ((void*)0);

 bitmap_fill(pgdir->order1, MLX4_DB_PER_PAGE / 2);
 pgdir->bits[0] = pgdir->order0;
 pgdir->bits[1] = pgdir->order1;
 pgdir->db_page = dma_alloc_coherent(dma_device, PAGE_SIZE,
         &pgdir->db_dma, GFP_KERNEL);
 if (!pgdir->db_page) {
  kfree(pgdir);
  return ((void*)0);
 }

 return pgdir;
}
