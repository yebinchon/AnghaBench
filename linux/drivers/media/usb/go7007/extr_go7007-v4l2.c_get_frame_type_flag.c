
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int vb2_buf; } ;
struct go7007_buffer {int frame_offset; TYPE_1__ vb; } ;


 int V4L2_BUF_FLAG_BFRAME ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_BUF_FLAG_PFRAME ;




 int* vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static u32 get_frame_type_flag(struct go7007_buffer *vb, int format)
{
 u8 *ptr = vb2_plane_vaddr(&vb->vb.vb2_buf, 0);

 switch (format) {
 case 131:
  return V4L2_BUF_FLAG_KEYFRAME;
 case 128:
  switch ((ptr[vb->frame_offset + 4] >> 6) & 0x3) {
  case 0:
   return V4L2_BUF_FLAG_KEYFRAME;
  case 1:
   return V4L2_BUF_FLAG_PFRAME;
  case 2:
   return V4L2_BUF_FLAG_BFRAME;
  default:
   return 0;
  }
 case 130:
 case 129:
  switch ((ptr[vb->frame_offset + 5] >> 3) & 0x7) {
  case 1:
   return V4L2_BUF_FLAG_KEYFRAME;
  case 2:
   return V4L2_BUF_FLAG_PFRAME;
  case 3:
   return V4L2_BUF_FLAG_BFRAME;
  default:
   return 0;
  }
 }

 return 0;
}
