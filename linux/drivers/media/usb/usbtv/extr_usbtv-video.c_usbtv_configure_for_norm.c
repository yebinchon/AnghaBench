
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct usbtv_norm_params {int norm; int cap_width; int cap_height; } ;
struct usbtv {int width; int height; int n_chunks; int norm; } ;


 int ARRAY_SIZE (struct usbtv_norm_params*) ;
 int EINVAL ;
 int USBTV_CHUNK ;
 struct usbtv_norm_params* norm_params ;

__attribute__((used)) static int usbtv_configure_for_norm(struct usbtv *usbtv, v4l2_std_id norm)
{
 int i, ret = 0;
 struct usbtv_norm_params *params = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(norm_params); i++) {
  if (norm_params[i].norm & norm) {
   params = &norm_params[i];
   break;
  }
 }

 if (params) {
  usbtv->width = params->cap_width;
  usbtv->height = params->cap_height;
  usbtv->n_chunks = usbtv->width * usbtv->height
      / 4 / USBTV_CHUNK;
  usbtv->norm = norm;
 } else
  ret = -EINVAL;

 return ret;
}
