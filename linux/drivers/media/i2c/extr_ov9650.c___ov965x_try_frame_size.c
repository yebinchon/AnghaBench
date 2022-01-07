
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct ov965x_framesize {scalar_t__ height; scalar_t__ width; } ;


 int ARRAY_SIZE (struct ov965x_framesize*) ;
 unsigned int UINT_MAX ;
 int abs (scalar_t__) ;
 struct ov965x_framesize* ov965x_framesizes ;

__attribute__((used)) static void __ov965x_try_frame_size(struct v4l2_mbus_framefmt *mf,
        const struct ov965x_framesize **size)
{
 const struct ov965x_framesize *fsize = &ov965x_framesizes[0],
  *match = ((void*)0);
 int i = ARRAY_SIZE(ov965x_framesizes);
 unsigned int min_err = UINT_MAX;

 while (i--) {
  int err = abs(fsize->width - mf->width)
    + abs(fsize->height - mf->height);
  if (err < min_err) {
   min_err = err;
   match = fsize;
  }
  fsize++;
 }
 if (!match)
  match = &ov965x_framesizes[0];
 mf->width = match->width;
 mf->height = match->height;
 if (size)
  *size = match;
}
