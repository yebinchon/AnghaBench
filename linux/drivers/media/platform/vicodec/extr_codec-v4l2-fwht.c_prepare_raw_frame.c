
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_fwht_pixfmt_info {int id; int components_num; int chroma_step; int luma_alpha_step; int height_div; int width_div; } ;
struct fwht_raw_frame {int * luma; int * cr; int * cb; int * alpha; int components_num; int chroma_step; int luma_alpha_step; int height_div; int width_div; } ;


 int EINVAL ;
__attribute__((used)) static int prepare_raw_frame(struct fwht_raw_frame *rf,
    const struct v4l2_fwht_pixfmt_info *info, u8 *buf,
    unsigned int size)
{
 rf->luma = buf;
 rf->width_div = info->width_div;
 rf->height_div = info->height_div;
 rf->luma_alpha_step = info->luma_alpha_step;
 rf->chroma_step = info->chroma_step;
 rf->alpha = ((void*)0);
 rf->components_num = info->components_num;





 if (!buf) {
  rf->luma = ((void*)0);
  rf->cb = ((void*)0);
  rf->cr = ((void*)0);
  rf->alpha = ((void*)0);
  return 0;
 }
 switch (info->id) {
 case 149:
  rf->cb = ((void*)0);
  rf->cr = ((void*)0);
  break;
 case 132:
  rf->cb = rf->luma + size;
  rf->cr = rf->cb + size / 4;
  break;
 case 129:
  rf->cr = rf->luma + size;
  rf->cb = rf->cr + size / 4;
  break;
 case 131:
  rf->cb = rf->luma + size;
  rf->cr = rf->cb + size / 2;
  break;
 case 146:
 case 145:
 case 143:
  rf->cb = rf->luma + size;
  rf->cr = rf->cb + 1;
  break;
 case 144:
 case 141:
 case 142:
  rf->cr = rf->luma + size;
  rf->cb = rf->cr + 1;
  break;
 case 130:
  rf->cb = rf->luma + 1;
  rf->cr = rf->cb + 2;
  break;
 case 128:
  rf->cr = rf->luma + 1;
  rf->cb = rf->cr + 2;
  break;
 case 136:
  rf->cb = rf->luma;
  rf->cr = rf->cb + 2;
  rf->luma++;
  break;
 case 135:
  rf->cr = rf->luma;
  rf->cb = rf->cr + 2;
  rf->luma++;
  break;
 case 140:
 case 148:
  rf->cr = rf->luma;
  rf->cb = rf->cr + 2;
  rf->luma++;
  break;
 case 153:
  rf->cb = rf->luma;
  rf->cr = rf->cb + 2;
  rf->luma++;
  break;
 case 139:
 case 133:
 case 147:
  rf->cr = rf->luma + 1;
  rf->cb = rf->cr + 2;
  rf->luma += 2;
  break;
 case 152:
 case 134:
  rf->cb = rf->luma;
  rf->cr = rf->cb + 2;
  rf->luma++;
  break;
 case 154:
  rf->alpha = rf->luma;
  rf->cr = rf->luma + 1;
  rf->cb = rf->cr + 2;
  rf->luma += 2;
  break;
 case 155:
  rf->cb = rf->luma;
  rf->cr = rf->cb + 2;
  rf->luma++;
  rf->alpha = rf->cr + 1;
  break;
 case 150:
  rf->cb = rf->luma + 1;
  rf->cr = rf->cb + 2;
  rf->luma += 2;
  break;
 case 151:
  rf->alpha = rf->luma;
  rf->cb = rf->luma + 1;
  rf->cr = rf->cb + 2;
  rf->luma += 2;
  break;
 case 137:
  rf->cr = rf->luma;
  rf->cb = rf->cr + 2;
  rf->luma++;
  break;
 case 138:
  rf->alpha = rf->luma + 3;
  rf->cr = rf->luma;
  rf->cb = rf->cr + 2;
  rf->luma++;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
