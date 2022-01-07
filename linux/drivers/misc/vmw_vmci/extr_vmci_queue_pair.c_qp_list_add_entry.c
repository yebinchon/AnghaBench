
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qp_list {int head; } ;
struct qp_entry {int list_item; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void qp_list_add_entry(struct qp_list *qp_list, struct qp_entry *entry)
{
 if (entry)
  list_add(&entry->list_item, &qp_list->head);
}
