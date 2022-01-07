
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct v4l2_fmtdesc {int type; size_t index; int pixelformat; scalar_t__* description; int flags; } ;
struct uvc_streaming {int type; size_t nformats; struct uvc_format* format; } ;
struct uvc_format {int flags; int fcc; int name; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int UVC_FMT_FLAG_COMPRESSED ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int memset (struct v4l2_fmtdesc*,int ,int) ;
 int strscpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int uvc_ioctl_enum_fmt(struct uvc_streaming *stream,
         struct v4l2_fmtdesc *fmt)
{
 struct uvc_format *format;
 enum v4l2_buf_type type = fmt->type;
 u32 index = fmt->index;

 if (fmt->type != stream->type || fmt->index >= stream->nformats)
  return -EINVAL;

 memset(fmt, 0, sizeof(*fmt));
 fmt->index = index;
 fmt->type = type;

 format = &stream->format[fmt->index];
 fmt->flags = 0;
 if (format->flags & UVC_FMT_FLAG_COMPRESSED)
  fmt->flags |= V4L2_FMT_FLAG_COMPRESSED;
 strscpy(fmt->description, format->name, sizeof(fmt->description));
 fmt->description[sizeof(fmt->description) - 1] = 0;
 fmt->pixelformat = format->fcc;
 return 0;
}
