
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_table {int addr; int page; int * bufs; } ;
struct pt1 {int dummy; } ;


 int PT1_NR_BUFS ;
 int pt1_cleanup_buffer (struct pt1*,int *) ;
 int pt1_free_page (struct pt1*,int ,int ) ;

__attribute__((used)) static void pt1_cleanup_table(struct pt1 *pt1, struct pt1_table *table)
{
 int i;

 for (i = 0; i < PT1_NR_BUFS; i++)
  pt1_cleanup_buffer(pt1, &table->bufs[i]);

 pt1_free_page(pt1, table->page, table->addr);
}
