
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_streaminfo {void* height; void* width; int streamformat; } ;
struct hva_frameinfo {int pixelformat; void* aligned_height; void* aligned_width; int size; void* height; void* width; } ;
struct hva_ctx {int max_stream_size; int quantization; int ycbcr_enc; int xfer_func; int colorspace; struct hva_streaminfo streaminfo; struct hva_frameinfo frameinfo; } ;


 void* ALIGN (void*,int ) ;
 void* HVA_DEFAULT_HEIGHT ;
 void* HVA_DEFAULT_WIDTH ;
 int HVA_HEIGHT_ALIGNMENT ;
 int HVA_WIDTH_ALIGNMENT ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_NV12 ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int estimated_stream_size (void*,void*) ;
 int frame_size (void*,void*,int ) ;

__attribute__((used)) static void set_default_params(struct hva_ctx *ctx)
{
 struct hva_frameinfo *frameinfo = &ctx->frameinfo;
 struct hva_streaminfo *streaminfo = &ctx->streaminfo;

 frameinfo->pixelformat = V4L2_PIX_FMT_NV12;
 frameinfo->width = HVA_DEFAULT_WIDTH;
 frameinfo->height = HVA_DEFAULT_HEIGHT;
 frameinfo->aligned_width = ALIGN(frameinfo->width,
      HVA_WIDTH_ALIGNMENT);
 frameinfo->aligned_height = ALIGN(frameinfo->height,
       HVA_HEIGHT_ALIGNMENT);
 frameinfo->size = frame_size(frameinfo->aligned_width,
         frameinfo->aligned_height,
         frameinfo->pixelformat);

 streaminfo->streamformat = V4L2_PIX_FMT_H264;
 streaminfo->width = HVA_DEFAULT_WIDTH;
 streaminfo->height = HVA_DEFAULT_HEIGHT;

 ctx->colorspace = V4L2_COLORSPACE_REC709;
 ctx->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 ctx->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 ctx->quantization = V4L2_QUANTIZATION_DEFAULT;

 ctx->max_stream_size = estimated_stream_size(streaminfo->width,
           streaminfo->height);
}
