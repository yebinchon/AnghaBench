
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {int pool; } ;
struct vsp1_dl_body {int dummy; } ;


 struct vsp1_dl_body* vsp1_dl_body_get (int ) ;

struct vsp1_dl_body *vsp1_dlm_dl_body_get(struct vsp1_dl_manager *dlm)
{
 return vsp1_dl_body_get(dlm->pool);
}
