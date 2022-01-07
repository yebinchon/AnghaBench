
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct noon010_frmsize {scalar_t__ height; scalar_t__ width; } ;


 int ARRAY_SIZE (struct noon010_frmsize*) ;
 int EINVAL ;
 int abs (scalar_t__) ;
 struct noon010_frmsize* noon010_sizes ;

__attribute__((used)) static int noon010_try_frame_size(struct v4l2_mbus_framefmt *mf,
      const struct noon010_frmsize **size)
{
 unsigned int min_err = ~0;
 int i = ARRAY_SIZE(noon010_sizes);
 const struct noon010_frmsize *fsize = &noon010_sizes[0],
  *match = ((void*)0);

 while (i--) {
  int err = abs(fsize->width - mf->width)
    + abs(fsize->height - mf->height);

  if (err < min_err) {
   min_err = err;
   match = fsize;
  }
  fsize++;
 }
 if (match) {
  mf->width = match->width;
  mf->height = match->height;
  if (size)
   *size = match;
  return 0;
 }
 return -EINVAL;
}
