
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_list {int has_chain; int chain; } ;


 int list_add_tail (int *,int *) ;

int vsp1_dl_list_add_chain(struct vsp1_dl_list *head,
      struct vsp1_dl_list *dl)
{
 head->has_chain = 1;
 list_add_tail(&dl->chain, &head->chain);
 return 0;
}
