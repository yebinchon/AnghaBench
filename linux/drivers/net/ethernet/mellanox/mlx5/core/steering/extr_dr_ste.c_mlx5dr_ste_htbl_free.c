
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_htbl {int chunk; int refcount; } ;


 int EBUSY ;
 int kfree (struct mlx5dr_ste_htbl*) ;
 int mlx5dr_icm_free_chunk (int ) ;
 scalar_t__ refcount_read (int *) ;

int mlx5dr_ste_htbl_free(struct mlx5dr_ste_htbl *htbl)
{
 if (refcount_read(&htbl->refcount))
  return -EBUSY;

 mlx5dr_icm_free_chunk(htbl->chunk);
 kfree(htbl);
 return 0;
}
