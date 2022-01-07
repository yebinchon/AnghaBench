
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {unsigned int width; unsigned int height; unsigned int left; unsigned int top; } ;
struct v4l2_mbus_framefmt {int width; int height; } ;


 unsigned int DEFAULT_PHASE ;
 unsigned int MIN_IN_HEIGHT ;
 unsigned int MIN_IN_WIDTH ;
 void* clamp_t (int ,unsigned int,unsigned int,unsigned int) ;
 int u32 ;

__attribute__((used)) static void resizer_try_crop(const struct v4l2_mbus_framefmt *sink,
        const struct v4l2_mbus_framefmt *source,
        struct v4l2_rect *crop)
{
 const unsigned int spv = DEFAULT_PHASE;
 const unsigned int sph = DEFAULT_PHASE;




 unsigned int min_width =
  ((32 * sph + (source->width - 1) * 64 + 16) >> 8) + 7;
 unsigned int min_height =
  ((32 * spv + (source->height - 1) * 64 + 16) >> 8) + 4;
 unsigned int max_width =
  ((64 * sph + (source->width - 1) * 1024 + 32) >> 8) + 7;
 unsigned int max_height =
  ((64 * spv + (source->height - 1) * 1024 + 32) >> 8) + 7;

 crop->width = clamp_t(u32, crop->width, min_width, max_width);
 crop->height = clamp_t(u32, crop->height, min_height, max_height);


 crop->left = clamp_t(u32, crop->left, 0, sink->width - MIN_IN_WIDTH);
 crop->width = clamp_t(u32, crop->width, MIN_IN_WIDTH,
         sink->width - crop->left);
 crop->top = clamp_t(u32, crop->top, 0, sink->height - MIN_IN_HEIGHT);
 crop->height = clamp_t(u32, crop->height, MIN_IN_HEIGHT,
          sink->height - crop->top);
}
