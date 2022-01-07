
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_list {struct vsp1_dl_body* body0; } ;
struct vsp1_dl_body {int dummy; } ;



struct vsp1_dl_body *vsp1_dl_list_get_body0(struct vsp1_dl_list *dl)
{
 return dl->body0;
}
