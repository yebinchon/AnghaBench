
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* next; } ;
struct lkdtm_list {TYPE_1__ node; } ;


 int LIST_HEAD (int ) ;
 int list_add (TYPE_1__*,int *) ;
 int list_del (TYPE_1__*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int test_head ;

void lkdtm_CORRUPT_LIST_DEL(void)
{
 LIST_HEAD(test_head);
 struct lkdtm_list item;
 void *target[2] = { };
 void *redirection = &target;

 list_add(&item.node, &test_head);

 pr_info("attempting good list removal\n");
 list_del(&item.node);

 pr_info("attempting corrupted list removal\n");
 list_add(&item.node, &test_head);


 item.node.next = redirection;
 list_del(&item.node);

 if (target[0] == ((void*)0) && target[1] == ((void*)0))
  pr_err("Overwrite did not happen, but no BUG?!\n");
 else
  pr_err("list_del() corruption not detected!\n");
}
