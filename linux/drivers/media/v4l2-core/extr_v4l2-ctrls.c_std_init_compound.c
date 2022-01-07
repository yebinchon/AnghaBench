
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union v4l2_ctrl_ptr {void* p; } ;
typedef int u32 ;
struct TYPE_4__ {int picture_structure; int picture_coding_type; } ;
struct TYPE_3__ {int chroma_format; } ;
struct v4l2_ctrl_mpeg2_slice_params {TYPE_2__ picture; TYPE_1__ sequence; } ;
struct v4l2_ctrl {int elem_size; int type; } ;



 int V4L2_MPEG2_PICTURE_CODING_TYPE_I ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
         union v4l2_ctrl_ptr ptr)
{
 struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
 void *p = ptr.p + idx * ctrl->elem_size;

 memset(p, 0, ctrl->elem_size);






 switch ((u32)ctrl->type) {
 case 128:
  p_mpeg2_slice_params = p;

  p_mpeg2_slice_params->sequence.chroma_format = 1;

  p_mpeg2_slice_params->picture.picture_structure = 1;
  p_mpeg2_slice_params->picture.picture_coding_type =
     V4L2_MPEG2_PICTURE_CODING_TYPE_I;
  break;
 }
}
