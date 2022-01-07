
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nix_mce_list {int max; scalar_t__ count; int head; } ;


 int INIT_HLIST_HEAD (int *) ;

__attribute__((used)) static void nix_mce_list_init(struct nix_mce_list *list, int max)
{
 INIT_HLIST_HEAD(&list->head);
 list->count = 0;
 list->max = max;
}
