
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5dr_ste_htbl {TYPE_2__* chunk; } ;
struct mlx5dr_domain {TYPE_1__* send_ring; } ;
struct TYPE_4__ {int byte_size; int num_of_entries; } ;
struct TYPE_3__ {int max_post_send_size; } ;


 int DR_STE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int dr_get_tbl_copy_details(struct mlx5dr_domain *dmn,
       struct mlx5dr_ste_htbl *htbl,
       u8 **data,
       u32 *byte_size,
       int *iterations,
       int *num_stes)
{
 int alloc_size;

 if (htbl->chunk->byte_size > dmn->send_ring->max_post_send_size) {
  *iterations = htbl->chunk->byte_size /
   dmn->send_ring->max_post_send_size;
  *byte_size = dmn->send_ring->max_post_send_size;
  alloc_size = *byte_size;
  *num_stes = *byte_size / DR_STE_SIZE;
 } else {
  *iterations = 1;
  *num_stes = htbl->chunk->num_of_entries;
  alloc_size = *num_stes * DR_STE_SIZE;
 }

 *data = kzalloc(alloc_size, GFP_KERNEL);
 if (!*data)
  return -ENOMEM;

 return 0;
}
