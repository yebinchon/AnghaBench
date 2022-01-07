
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_mpfs {scalar_t__ size; int bitmap; } ;


 int ENOSPC ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int alloc_l2table_index(struct mlx5_mpfs *l2table, u32 *ix)
{
 int err = 0;

 *ix = find_first_zero_bit(l2table->bitmap, l2table->size);
 if (*ix >= l2table->size)
  err = -ENOSPC;
 else
  __set_bit(*ix, l2table->bitmap);

 return err;
}
