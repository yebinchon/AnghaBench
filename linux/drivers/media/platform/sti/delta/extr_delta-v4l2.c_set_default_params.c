
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_streaminfo {void* height; void* width; void* quantization; void* ycbcr_enc; void* xfer_func; void* colorspace; void* field; int streamformat; int pixelformat; void* aligned_height; void* aligned_width; int size; } ;
struct delta_frameinfo {void* height; void* width; void* quantization; void* ycbcr_enc; void* xfer_func; void* colorspace; void* field; int streamformat; int pixelformat; void* aligned_height; void* aligned_width; int size; } ;
struct delta_ctx {int max_au_size; struct delta_streaminfo streaminfo; struct delta_streaminfo frameinfo; } ;


 void* ALIGN (void*,int ) ;
 void* DELTA_DEFAULT_HEIGHT ;
 int DELTA_DEFAULT_STREAMFORMAT ;
 void* DELTA_DEFAULT_WIDTH ;
 int DELTA_HEIGHT_ALIGNMENT ;
 int DELTA_WIDTH_ALIGNMENT ;
 void* V4L2_COLORSPACE_REC709 ;
 void* V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_NV12 ;
 void* V4L2_QUANTIZATION_DEFAULT ;
 void* V4L2_XFER_FUNC_DEFAULT ;
 void* V4L2_YCBCR_ENC_DEFAULT ;
 int estimated_au_size (void*,void*) ;
 int frame_size (void*,void*,int ) ;
 int memset (struct delta_streaminfo*,int ,int) ;

__attribute__((used)) static void set_default_params(struct delta_ctx *ctx)
{
 struct delta_frameinfo *frameinfo = &ctx->frameinfo;
 struct delta_streaminfo *streaminfo = &ctx->streaminfo;

 memset(frameinfo, 0, sizeof(*frameinfo));
 frameinfo->pixelformat = V4L2_PIX_FMT_NV12;
 frameinfo->width = DELTA_DEFAULT_WIDTH;
 frameinfo->height = DELTA_DEFAULT_HEIGHT;
 frameinfo->aligned_width = ALIGN(frameinfo->width,
      DELTA_WIDTH_ALIGNMENT);
 frameinfo->aligned_height = ALIGN(frameinfo->height,
       DELTA_HEIGHT_ALIGNMENT);
 frameinfo->size = frame_size(frameinfo->aligned_width,
         frameinfo->aligned_height,
         frameinfo->pixelformat);
 frameinfo->field = V4L2_FIELD_NONE;
 frameinfo->colorspace = V4L2_COLORSPACE_REC709;
 frameinfo->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 frameinfo->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 frameinfo->quantization = V4L2_QUANTIZATION_DEFAULT;

 memset(streaminfo, 0, sizeof(*streaminfo));
 streaminfo->streamformat = DELTA_DEFAULT_STREAMFORMAT;
 streaminfo->width = DELTA_DEFAULT_WIDTH;
 streaminfo->height = DELTA_DEFAULT_HEIGHT;
 streaminfo->field = V4L2_FIELD_NONE;
 streaminfo->colorspace = V4L2_COLORSPACE_REC709;
 streaminfo->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 streaminfo->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 streaminfo->quantization = V4L2_QUANTIZATION_DEFAULT;

 ctx->max_au_size = estimated_au_size(streaminfo->width,
          streaminfo->height);
}
