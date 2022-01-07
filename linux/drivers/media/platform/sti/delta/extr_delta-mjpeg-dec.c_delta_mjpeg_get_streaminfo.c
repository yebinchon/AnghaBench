
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct delta_streaminfo {int dpb; int field; int height; int width; int streamformat; } ;
struct delta_mjpeg_ctx {TYPE_1__* header; } ;
struct delta_ctx {int dummy; } ;
struct TYPE_2__ {int frame_height; int frame_width; } ;


 int ENODATA ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_MJPEG ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_get_streaminfo(struct delta_ctx *pctx,
          struct delta_streaminfo *streaminfo)
{
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);

 if (!ctx->header)
  goto nodata;

 streaminfo->streamformat = V4L2_PIX_FMT_MJPEG;
 streaminfo->width = ctx->header->frame_width;
 streaminfo->height = ctx->header->frame_height;


 streaminfo->field = V4L2_FIELD_NONE;

 streaminfo->dpb = 1;

 return 0;

nodata:
 return -ENODATA;
}
