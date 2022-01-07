
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; scalar_t__ colorspace; scalar_t__ quantization; scalar_t__ xfer_func; scalar_t__ ycbcr_enc; scalar_t__ field; } ;
struct v4l2_subdev_format {TYPE_2__ format; } ;
struct media_link {TYPE_3__* sink; TYPE_3__* source; } ;
struct TYPE_6__ {TYPE_1__* entity; } ;
struct TYPE_4__ {int name; } ;


 int EPIPE ;
 scalar_t__ V4L2_COLORSPACE_DEFAULT ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_XFER_FUNC_DEFAULT ;
 scalar_t__ V4L2_YCBCR_ENC_DEFAULT ;
 int pr_info (char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vimc_get_mbus_format (TYPE_3__*,struct v4l2_subdev_format*) ;

int vimc_link_validate(struct media_link *link)
{
 struct v4l2_subdev_format source_fmt, sink_fmt;
 int ret;

 ret = vimc_get_mbus_format(link->source, &source_fmt);
 if (ret)
  return ret;

 ret = vimc_get_mbus_format(link->sink, &sink_fmt);
 if (ret)
  return ret;

 pr_info("vimc link validate: "
  "%s:src:%dx%d (0x%x, %d, %d, %d, %d) "
  "%s:snk:%dx%d (0x%x, %d, %d, %d, %d)\n",

  link->source->entity->name,
  source_fmt.format.width, source_fmt.format.height,
  source_fmt.format.code, source_fmt.format.colorspace,
  source_fmt.format.quantization, source_fmt.format.xfer_func,
  source_fmt.format.ycbcr_enc,

  link->sink->entity->name,
  sink_fmt.format.width, sink_fmt.format.height,
  sink_fmt.format.code, sink_fmt.format.colorspace,
  sink_fmt.format.quantization, sink_fmt.format.xfer_func,
  sink_fmt.format.ycbcr_enc);


 if (source_fmt.format.width != sink_fmt.format.width
     || source_fmt.format.height != sink_fmt.format.height
     || source_fmt.format.code != sink_fmt.format.code)
  return -EPIPE;






 if (source_fmt.format.field != sink_fmt.format.field &&
     sink_fmt.format.field != V4L2_FIELD_NONE)
  return -EPIPE;





 if (source_fmt.format.colorspace == V4L2_COLORSPACE_DEFAULT
     || sink_fmt.format.colorspace == V4L2_COLORSPACE_DEFAULT)
  return 0;


 if (source_fmt.format.colorspace != sink_fmt.format.colorspace)
  return -EPIPE;


 if (source_fmt.format.ycbcr_enc != V4L2_YCBCR_ENC_DEFAULT
     && sink_fmt.format.ycbcr_enc != V4L2_YCBCR_ENC_DEFAULT
     && source_fmt.format.ycbcr_enc != sink_fmt.format.ycbcr_enc)
  return -EPIPE;

 if (source_fmt.format.quantization != V4L2_QUANTIZATION_DEFAULT
     && sink_fmt.format.quantization != V4L2_QUANTIZATION_DEFAULT
     && source_fmt.format.quantization != sink_fmt.format.quantization)
  return -EPIPE;

 if (source_fmt.format.xfer_func != V4L2_XFER_FUNC_DEFAULT
     && sink_fmt.format.xfer_func != V4L2_XFER_FUNC_DEFAULT
     && source_fmt.format.xfer_func != sink_fmt.format.xfer_func)
  return -EPIPE;

 return 0;
}
