
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* planes; } ;
struct TYPE_6__ {TYPE_2__ vb2_buf; } ;
struct go7007_buffer {TYPE_3__ vb; } ;
struct go7007 {int width; int* active_map; int height; size_t* modet_map; } ;
struct TYPE_4__ {int bytesused; } ;


 int go7007_set_motion_regions (struct go7007*,struct go7007_buffer*,int) ;
 int store_byte (struct go7007_buffer*,int) ;

__attribute__((used)) static void go7007_motion_regions(struct go7007 *go, struct go7007_buffer *vb)
{
 u32 *bytesused = &vb->vb.vb2_buf.planes[0].bytesused;
 unsigned motion[4] = { 0, 0, 0, 0 };
 u32 motion_regions = 0;
 unsigned stride = (go->width + 7) >> 3;
 unsigned x, y;
 int i;

 for (i = 0; i < 216; ++i)
  store_byte(vb, go->active_map[i]);
 for (y = 0; y < go->height / 16; y++) {
  for (x = 0; x < go->width / 16; x++) {
   if (!(go->active_map[y * stride + (x >> 3)] & (1 << (x & 7))))
    continue;
   motion[go->modet_map[y * (go->width / 16) + x]]++;
  }
 }
 motion_regions = ((motion[0] > 0) << 0) |
    ((motion[1] > 0) << 1) |
    ((motion[2] > 0) << 2) |
    ((motion[3] > 0) << 3);
 *bytesused -= 216;
 go7007_set_motion_regions(go, vb, motion_regions);
}
