
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;


 int list_del (struct list_head*) ;

__attribute__((used)) static inline struct list_head *lio_list_delete_head(struct list_head *root)
{
 struct list_head *node;

 if (root->prev == root && root->next == root)
  node = ((void*)0);
 else
  node = root->next;

 if (node)
  list_del(node);

 return node;
}
