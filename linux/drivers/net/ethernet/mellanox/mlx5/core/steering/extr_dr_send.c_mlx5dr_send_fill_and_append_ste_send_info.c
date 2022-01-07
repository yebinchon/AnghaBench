
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct mlx5dr_ste_send_info {int send_list; int * data; int * data_cont; void* offset; struct mlx5dr_ste* ste; void* size; } ;
struct mlx5dr_ste {int dummy; } ;
struct list_head {int dummy; } ;


 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int *,int *,void*) ;

void mlx5dr_send_fill_and_append_ste_send_info(struct mlx5dr_ste *ste, u16 size,
            u16 offset, u8 *data,
            struct mlx5dr_ste_send_info *ste_info,
            struct list_head *send_list,
            bool copy_data)
{
 ste_info->size = size;
 ste_info->ste = ste;
 ste_info->offset = offset;

 if (copy_data) {
  memcpy(ste_info->data_cont, data, size);
  ste_info->data = ste_info->data_cont;
 } else {
  ste_info->data = data;
 }

 list_add_tail(&ste_info->send_list, send_list);
}
