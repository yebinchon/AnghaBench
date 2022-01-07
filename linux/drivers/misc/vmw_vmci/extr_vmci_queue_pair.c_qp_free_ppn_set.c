
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppn_set {int consume_ppns; int produce_ppns; scalar_t__ initialized; } ;


 int kfree (int ) ;
 int memset (struct ppn_set*,int ,int) ;

__attribute__((used)) static void qp_free_ppn_set(struct ppn_set *ppn_set)
{
 if (ppn_set->initialized) {

  kfree(ppn_set->produce_ppns);
  kfree(ppn_set->consume_ppns);
 }
 memset(ppn_set, 0, sizeof(*ppn_set));
}
