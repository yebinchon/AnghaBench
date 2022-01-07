
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fimc_frame {void* f_height; void* f_width; void* o_height; void* o_width; } ;



__attribute__((used)) static inline void set_frame_bounds(struct fimc_frame *f, u32 width, u32 height)
{
 f->o_width = width;
 f->o_height = height;
 f->f_width = width;
 f->f_height = height;
}
