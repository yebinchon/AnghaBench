
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_2__ {scalar_t__ height; scalar_t__ width; } ;
struct s5k4ecgx_frmsize {TYPE_1__ size; } ;


 int ARRAY_SIZE (struct s5k4ecgx_frmsize*) ;
 int EINVAL ;
 int abs (scalar_t__) ;
 struct s5k4ecgx_frmsize* s5k4ecgx_prev_sizes ;

__attribute__((used)) static int s5k4ecgx_try_frame_size(struct v4l2_mbus_framefmt *mf,
      const struct s5k4ecgx_frmsize **size)
{
 unsigned int min_err = ~0;
 int i = ARRAY_SIZE(s5k4ecgx_prev_sizes);
 const struct s5k4ecgx_frmsize *fsize = &s5k4ecgx_prev_sizes[0],
  *match = ((void*)0);

 while (i--) {
  int err = abs(fsize->size.width - mf->width)
    + abs(fsize->size.height - mf->height);
  if (err < min_err) {
   min_err = err;
   match = fsize;
  }
  fsize++;
 }
 if (match) {
  mf->width = match->size.width;
  mf->height = match->size.height;
  if (size)
   *size = match;
  return 0;
 }

 return -EINVAL;
}
