
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fimc_frame {void* height; void* width; void* offs_v; void* offs_h; } ;



__attribute__((used)) static inline void set_frame_crop(struct fimc_frame *f,
      u32 left, u32 top, u32 width, u32 height)
{
 f->offs_h = left;
 f->offs_v = top;
 f->width = width;
 f->height = height;
}
