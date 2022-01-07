
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_id_tbl {int max; int table; scalar_t__ start; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void cnic_free_id(struct cnic_id_tbl *id_tbl, u32 id)
{
 if (id == -1)
  return;

 id -= id_tbl->start;
 if (id >= id_tbl->max)
  return;

 clear_bit(id, id_tbl->table);
}
