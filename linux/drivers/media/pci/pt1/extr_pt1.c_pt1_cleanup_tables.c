
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_table {int dummy; } ;
struct pt1 {struct pt1_table* tables; } ;


 int pt1_cleanup_table (struct pt1*,struct pt1_table*) ;
 int pt1_nr_tables ;
 int pt1_unregister_tables (struct pt1*) ;
 int vfree (struct pt1_table*) ;

__attribute__((used)) static void pt1_cleanup_tables(struct pt1 *pt1)
{
 struct pt1_table *tables;
 int i;

 tables = pt1->tables;
 pt1_unregister_tables(pt1);

 for (i = 0; i < pt1_nr_tables; i++)
  pt1_cleanup_table(pt1, &tables[i]);

 vfree(tables);
}
