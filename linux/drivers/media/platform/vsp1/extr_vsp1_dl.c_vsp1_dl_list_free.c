
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_list {int body0; } ;


 int kfree (struct vsp1_dl_list*) ;
 int vsp1_dl_body_put (int ) ;
 int vsp1_dl_list_bodies_put (struct vsp1_dl_list*) ;

__attribute__((used)) static void vsp1_dl_list_free(struct vsp1_dl_list *dl)
{
 vsp1_dl_body_put(dl->body0);
 vsp1_dl_list_bodies_put(dl);

 kfree(dl);
}
