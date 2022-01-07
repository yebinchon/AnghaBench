
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_2__ {unsigned int width; unsigned int height; } ;
struct sh_vou_geometry {unsigned int in_width; unsigned int in_height; int scale_idx_h; int scale_idx_v; TYPE_1__ output; } ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int UINT_MAX ;
 int V4L2_STD_525_60 ;
 unsigned int VOU_MAX_IMAGE_WIDTH ;
 int VOU_MIN_IMAGE_HEIGHT ;
 int VOU_MIN_IMAGE_WIDTH ;
 unsigned int abs (unsigned int) ;
 int v4l_bound_align_image (unsigned int*,int ,unsigned int,int,unsigned int*,int ,unsigned int,int,int ) ;
 unsigned int* vou_scale_h_den ;
 unsigned int* vou_scale_h_num ;
 unsigned int* vou_scale_v_den ;
 unsigned int* vou_scale_v_num ;

__attribute__((used)) static void vou_adjust_input(struct sh_vou_geometry *geo, v4l2_std_id std)
{

 unsigned int best_err = UINT_MAX, best = 0, img_height_max;
 int i, idx = 0;

 if (std & V4L2_STD_525_60)
  img_height_max = 480;
 else
  img_height_max = 576;


 v4l_bound_align_image(&geo->in_width,
         VOU_MIN_IMAGE_WIDTH, VOU_MAX_IMAGE_WIDTH, 2,
         &geo->in_height,
         VOU_MIN_IMAGE_HEIGHT, img_height_max, 1, 0);


 for (i = ARRAY_SIZE(vou_scale_h_num) - 1; i >= 0; i--) {
  unsigned int err;
  unsigned int found = geo->output.width * vou_scale_h_den[i] /
   vou_scale_h_num[i];

  if (found > VOU_MAX_IMAGE_WIDTH)

   break;

  err = abs(found - geo->in_width);
  if (err < best_err) {
   best_err = err;
   idx = i;
   best = found;
  }
  if (!err)
   break;
 }

 geo->in_width = best;
 geo->scale_idx_h = idx;

 best_err = UINT_MAX;


 for (i = ARRAY_SIZE(vou_scale_v_num) - 1; i >= 0; i--) {
  unsigned int err;
  unsigned int found = geo->output.height * vou_scale_v_den[i] /
   vou_scale_v_num[i];

  if (found > img_height_max)

   break;

  err = abs(found - geo->in_height);
  if (err < best_err) {
   best_err = err;
   idx = i;
   best = found;
  }
  if (!err)
   break;
 }

 geo->in_height = best;
 geo->scale_idx_v = idx;
}
