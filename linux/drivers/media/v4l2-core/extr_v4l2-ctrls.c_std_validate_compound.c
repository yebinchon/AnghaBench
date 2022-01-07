
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union v4l2_ctrl_ptr {void* p; } ;
typedef int u32 ;
struct v4l2_ctrl_vp8_frame_header {int coder_state; int entropy_header; int quant_header; int lf_header; int segment_header; int num_dct_parts; } ;
struct TYPE_4__ {int picture_coding_type; int picture_structure; int intra_dc_precision; } ;
struct TYPE_3__ {int chroma_format; } ;
struct v4l2_ctrl_mpeg2_slice_params {TYPE_2__ picture; TYPE_1__ sequence; } ;
struct v4l2_ctrl {int elem_size; int type; } ;


 int EINVAL ;
 int zero_padding (int ) ;

__attribute__((used)) static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
     union v4l2_ctrl_ptr ptr)
{
 struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
 struct v4l2_ctrl_vp8_frame_header *p_vp8_frame_header;
 void *p = ptr.p + idx * ctrl->elem_size;

 switch ((u32)ctrl->type) {
 case 132:
  p_mpeg2_slice_params = p;

  switch (p_mpeg2_slice_params->sequence.chroma_format) {
  case 1:
  case 2:
  case 3:
   break;
  default:
   return -EINVAL;
  }

  switch (p_mpeg2_slice_params->picture.intra_dc_precision) {
  case 0:
  case 1:
  case 2:
  case 3:
   break;
  default:
   return -EINVAL;
  }

  switch (p_mpeg2_slice_params->picture.picture_structure) {
  case 1:
  case 2:
  case 3:
   break;
  default:
   return -EINVAL;
  }

  switch (p_mpeg2_slice_params->picture.picture_coding_type) {
  case 129:
  case 128:
  case 130:
   break;
  default:
   return -EINVAL;
  }

  break;

 case 133:
  break;

 case 139:
  break;

 case 134:
 case 137:
 case 136:
 case 135:
 case 138:
  break;

 case 131:
  p_vp8_frame_header = p;

  switch (p_vp8_frame_header->num_dct_parts) {
  case 1:
  case 2:
  case 4:
  case 8:
   break;
  default:
   return -EINVAL;
  }
  zero_padding(p_vp8_frame_header->segment_header);
  zero_padding(p_vp8_frame_header->lf_header);
  zero_padding(p_vp8_frame_header->quant_header);
  zero_padding(p_vp8_frame_header->entropy_header);
  zero_padding(p_vp8_frame_header->coder_state);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
