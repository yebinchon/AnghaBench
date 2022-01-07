
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {unsigned int width; unsigned int height; int top; int left; } ;


 int ERANGE ;
 unsigned int MAX_HEIGHT ;
 unsigned int MAX_WIDTH ;
 unsigned int V4L2_SEL_FLAG_GE ;
 unsigned int V4L2_SEL_FLAG_LE ;

int vivid_vid_adjust_sel(unsigned flags, struct v4l2_rect *r)
{
 unsigned w = r->width;
 unsigned h = r->height;


 w &= 0xffff;
 h &= 0xffff;
 if (!(flags & V4L2_SEL_FLAG_LE)) {
  w++;
  h++;
  if (w < 2)
   w = 2;
  if (h < 2)
   h = 2;
 }
 if (!(flags & V4L2_SEL_FLAG_GE)) {
  if (w > MAX_WIDTH)
   w = MAX_WIDTH;
  if (h > MAX_HEIGHT)
   h = MAX_HEIGHT;
 }
 w = w & ~1;
 h = h & ~1;
 if (w < 2 || h < 2)
  return -ERANGE;
 if (w > MAX_WIDTH || h > MAX_HEIGHT)
  return -ERANGE;
 if (r->top < 0)
  r->top = 0;
 if (r->left < 0)
  r->left = 0;

 r->left &= 0xfffe;
 r->top &= 0xfffe;
 if (r->left + w > MAX_WIDTH)
  r->left = MAX_WIDTH - w;
 if (r->top + h > MAX_HEIGHT)
  r->top = MAX_HEIGHT - h;
 if ((flags & (V4L2_SEL_FLAG_GE | V4L2_SEL_FLAG_LE)) ==
   (V4L2_SEL_FLAG_GE | V4L2_SEL_FLAG_LE) &&
     (r->width != w || r->height != h))
  return -ERANGE;
 r->width = w;
 r->height = h;
 return 0;
}
