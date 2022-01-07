
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgb4_tc_u32_table {unsigned int size; struct cxgb4_link* table; } ;
struct cxgb4_link {struct cxgb4_tc_u32_table* tid_map; } ;
struct adapter {struct cxgb4_tc_u32_table* tc_u32; } ;


 int kvfree (struct cxgb4_tc_u32_table*) ;

void cxgb4_cleanup_tc_u32(struct adapter *adap)
{
 struct cxgb4_tc_u32_table *t;
 unsigned int i;

 if (!adap->tc_u32)
  return;


 t = adap->tc_u32;
 for (i = 0; i < t->size; i++) {
  struct cxgb4_link *link = &t->table[i];

  kvfree(link->tid_map);
 }
 kvfree(adap->tc_u32);
}
