
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_free_db_area {int* db_idx; int return_pos; int num_free; int idx_lock; scalar_t__ alloc_pos; } ;


 int HINIC_DB_MAX_AREAS ;
 int sema_init (int *,int) ;

__attribute__((used)) static void init_db_area_idx(struct hinic_free_db_area *free_db_area)
{
 int i;

 for (i = 0; i < HINIC_DB_MAX_AREAS; i++)
  free_db_area->db_idx[i] = i;

 free_db_area->alloc_pos = 0;
 free_db_area->return_pos = HINIC_DB_MAX_AREAS;

 free_db_area->num_free = HINIC_DB_MAX_AREAS;

 sema_init(&free_db_area->idx_lock, 1);
}
