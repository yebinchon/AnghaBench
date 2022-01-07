
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpe_ctx {TYPE_2__* dev; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ v4l2_dev; } ;


 int dev_warn (int ,char*) ;

__attribute__((used)) static void ds1_uv_error(struct vpe_ctx *ctx)
{
 dev_warn(ctx->dev->v4l2_dev.dev,
  "received downsampler error interrupt\n");
}
