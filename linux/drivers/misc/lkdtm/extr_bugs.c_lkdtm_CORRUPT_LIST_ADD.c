
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lkdtm_list {int node; } ;
struct TYPE_4__ {void* next; } ;


 int LIST_HEAD (TYPE_1__) ;
 int list_add (int *,TYPE_1__*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 TYPE_1__ test_head ;

void lkdtm_CORRUPT_LIST_ADD(void)
{





 LIST_HEAD(test_head);
 struct lkdtm_list good, bad;
 void *target[2] = { };
 void *redirection = &target;

 pr_info("attempting good list addition\n");
 list_add(&good.node, &test_head);

 pr_info("attempting corrupted list addition\n");





 test_head.next = redirection;
 list_add(&bad.node, &test_head);

 if (target[0] == ((void*)0) && target[1] == ((void*)0))
  pr_err("Overwrite did not happen, but no BUG?!\n");
 else
  pr_err("list_add() corruption not detected!\n");
}
