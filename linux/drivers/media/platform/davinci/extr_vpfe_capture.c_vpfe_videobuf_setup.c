
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vpfe_fh {struct vpfe_device* vpfe_dev; } ;
struct TYPE_5__ {unsigned int sizeimage; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ memory; int v4l2_dev; TYPE_3__ fmt; } ;
struct videobuf_queue {struct vpfe_fh* priv_data; } ;
struct TYPE_8__ {unsigned int device_bufsize; unsigned int min_numbuffers; } ;


 scalar_t__ V4L2_MEMORY_MMAP ;
 TYPE_4__ config_params ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,...) ;

__attribute__((used)) static int vpfe_videobuf_setup(struct videobuf_queue *vq,
    unsigned int *count,
    unsigned int *size)
{
 struct vpfe_fh *fh = vq->priv_data;
 struct vpfe_device *vpfe_dev = fh->vpfe_dev;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buffer_setup\n");
 *size = vpfe_dev->fmt.fmt.pix.sizeimage;
 if (vpfe_dev->memory == V4L2_MEMORY_MMAP &&
  vpfe_dev->fmt.fmt.pix.sizeimage > config_params.device_bufsize)
  *size = config_params.device_bufsize;

 if (*count < config_params.min_numbuffers)
  *count = config_params.min_numbuffers;
 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev,
  "count=%d, size=%d\n", *count, *size);
 return 0;
}
