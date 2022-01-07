
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_streaminfo {int flags; int field; int pixelaspect; int crop; int height; int width; } ;
struct delta_frameinfo {int field; int pixelaspect; int flags; int crop; int pixelformat; void* aligned_height; void* aligned_width; int size; int height; int width; } ;
struct delta_ctx {struct delta_streaminfo streaminfo; } ;


 void* ALIGN (int ,int ) ;
 int DELTA_FRAMEINFO_FLAG_CROP ;
 int DELTA_FRAMEINFO_FLAG_PIXELASPECT ;
 int DELTA_HEIGHT_ALIGNMENT ;
 int DELTA_STREAMINFO_FLAG_CROP ;
 int DELTA_STREAMINFO_FLAG_PIXELASPECT ;
 int DELTA_WIDTH_ALIGNMENT ;
 int V4L2_PIX_FMT_NV12 ;
 int frame_size (void*,void*,int ) ;
 int memset (struct delta_frameinfo*,int ,int) ;

int delta_get_frameinfo_default(struct delta_ctx *ctx,
    struct delta_frameinfo *frameinfo)
{
 struct delta_streaminfo *streaminfo = &ctx->streaminfo;

 memset(frameinfo, 0, sizeof(*frameinfo));
 frameinfo->pixelformat = V4L2_PIX_FMT_NV12;
 frameinfo->width = streaminfo->width;
 frameinfo->height = streaminfo->height;
 frameinfo->aligned_width = ALIGN(streaminfo->width,
      DELTA_WIDTH_ALIGNMENT);
 frameinfo->aligned_height = ALIGN(streaminfo->height,
       DELTA_HEIGHT_ALIGNMENT);
 frameinfo->size = frame_size(frameinfo->aligned_width,
         frameinfo->aligned_height,
         frameinfo->pixelformat);
 if (streaminfo->flags & DELTA_STREAMINFO_FLAG_CROP) {
  frameinfo->flags |= DELTA_FRAMEINFO_FLAG_CROP;
  frameinfo->crop = streaminfo->crop;
 }
 if (streaminfo->flags & DELTA_STREAMINFO_FLAG_PIXELASPECT) {
  frameinfo->flags |= DELTA_FRAMEINFO_FLAG_PIXELASPECT;
  frameinfo->pixelaspect = streaminfo->pixelaspect;
 }
 frameinfo->field = streaminfo->field;

 return 0;
}
