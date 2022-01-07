
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_link {int list; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 struct media_link* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static struct media_link *media_add_link(struct list_head *head)
{
 struct media_link *link;

 link = kzalloc(sizeof(*link), GFP_KERNEL);
 if (link == ((void*)0))
  return ((void*)0);

 list_add_tail(&link->list, head);

 return link;
}
