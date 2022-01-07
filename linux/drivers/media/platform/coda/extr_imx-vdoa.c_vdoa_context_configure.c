
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vdoa_q_data {unsigned int width; unsigned int height; unsigned int bytesperline; unsigned int sizeimage; int pixelformat; } ;
struct vdoa_ctx {struct vdoa_q_data* q_data; } ;


 int EINVAL ;
 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;


 unsigned int round_up (unsigned int,int) ;

int vdoa_context_configure(struct vdoa_ctx *ctx,
      unsigned int width, unsigned int height,
      u32 pixelformat)
{
 struct vdoa_q_data *src_q_data;
 struct vdoa_q_data *dst_q_data;

 if (width < 16 || width > 8192 || width % 16 != 0 ||
     height < 16 || height > 4096 || height % 16 != 0)
  return -EINVAL;

 if (pixelformat != 128 &&
     pixelformat != 129)
  return -EINVAL;


 if (!ctx)
  return 0;

 src_q_data = &ctx->q_data[V4L2_M2M_SRC];
 dst_q_data = &ctx->q_data[V4L2_M2M_DST];

 src_q_data->width = width;
 src_q_data->height = height;
 src_q_data->bytesperline = width;
 src_q_data->sizeimage =
  round_up(src_q_data->bytesperline * height, 4096) +
  src_q_data->bytesperline * height / 2;

 dst_q_data->width = width;
 dst_q_data->height = height;
 dst_q_data->pixelformat = pixelformat;
 switch (pixelformat) {
 case 128:
  dst_q_data->bytesperline = width * 2;
  dst_q_data->sizeimage = dst_q_data->bytesperline * height;
  break;
 case 129:
 default:
  dst_q_data->bytesperline = width;
  dst_q_data->sizeimage =
   dst_q_data->bytesperline * height * 3 / 2;
  break;
 }

 return 0;
}
