
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_dec_param {int src_color; int* sampling_w; int* sampling_h; int uv_brz_w; void* dst_fourcc; } ;
 void* V4L2_PIX_FMT_GREY ;
 void* V4L2_PIX_FMT_YUV420M ;
 void* V4L2_PIX_FMT_YUV422M ;

__attribute__((used)) static int mtk_jpeg_decide_format(struct mtk_jpeg_dec_param *param)
{
 param->src_color = (param->sampling_w[0] << 20) |
      (param->sampling_h[0] << 16) |
      (param->sampling_w[1] << 12) |
      (param->sampling_h[1] << 8) |
      (param->sampling_w[2] << 4) |
      (param->sampling_h[2]);

 param->uv_brz_w = 0;
 switch (param->src_color) {
 case 128:
  param->uv_brz_w = 1;
  param->dst_fourcc = V4L2_PIX_FMT_YUV422M;
  break;
 case 129:
 case 132:
  param->dst_fourcc = V4L2_PIX_FMT_YUV422M;
  break;
 case 131:
 case 130:
  param->uv_brz_w = 1;
  param->dst_fourcc = V4L2_PIX_FMT_YUV420M;
  break;
 case 133:
  param->dst_fourcc = V4L2_PIX_FMT_YUV420M;
  break;
 case 134:
  param->dst_fourcc = V4L2_PIX_FMT_GREY;
  break;
 default:
  param->dst_fourcc = 0;
  return -1;
 }

 return 0;
}
