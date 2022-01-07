
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_id_tbl {int max; int next; int lock; scalar_t__ start; int table; } ;


 int find_first_zero_bit (int ,int) ;
 int find_next_zero_bit (int ,int,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32 cnic_alloc_new_id(struct cnic_id_tbl *id_tbl)
{
 u32 id;

 spin_lock(&id_tbl->lock);
 id = find_next_zero_bit(id_tbl->table, id_tbl->max, id_tbl->next);
 if (id >= id_tbl->max) {
  id = -1;
  if (id_tbl->next != 0) {
   id = find_first_zero_bit(id_tbl->table, id_tbl->next);
   if (id >= id_tbl->next)
    id = -1;
  }
 }

 if (id < id_tbl->max) {
  set_bit(id, id_tbl->table);
  id_tbl->next = (id + 1) & (id_tbl->max - 1);
  id += id_tbl->start;
 }

 spin_unlock(&id_tbl->lock);

 return id;
}
