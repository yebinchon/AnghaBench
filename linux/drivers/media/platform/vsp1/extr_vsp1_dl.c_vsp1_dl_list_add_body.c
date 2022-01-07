
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_list {int bodies; } ;
struct vsp1_dl_body {int list; int refcnt; } ;


 int list_add_tail (int *,int *) ;
 int refcount_inc (int *) ;

int vsp1_dl_list_add_body(struct vsp1_dl_list *dl, struct vsp1_dl_body *dlb)
{
 refcount_inc(&dlb->refcnt);

 list_add_tail(&dlb->list, &dl->bodies);

 return 0;
}
