
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpe_fmt {scalar_t__ fourcc; } ;
struct vpe_ctx {TYPE_2__* dev; TYPE_1__* q_data; } ;
struct TYPE_4__ {int vpdma; } ;
struct TYPE_3__ {struct vpe_fmt* fmt; } ;


 size_t Q_DATA_SRC ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 int VPDMA_FSEVENT_CHANNEL_ACTIVE ;
 int VPE_CHAN_CHROMA1_IN ;
 int VPE_CHAN_CHROMA2_IN ;
 int VPE_CHAN_CHROMA3_IN ;
 int VPE_CHAN_LUMA1_IN ;
 int VPE_CHAN_LUMA2_IN ;
 int VPE_CHAN_LUMA3_IN ;
 int VPE_CHAN_MV_IN ;
 int vpdma_set_frame_start_event (int ,int ,int ) ;
 int vpdma_set_line_mode (int ,int,int ) ;

__attribute__((used)) static void set_line_modes(struct vpe_ctx *ctx)
{
 struct vpe_fmt *fmt = ctx->q_data[Q_DATA_SRC].fmt;
 int line_mode = 1;

 if (fmt->fourcc == V4L2_PIX_FMT_NV12)
  line_mode = 0;


 vpdma_set_line_mode(ctx->dev->vpdma, line_mode, VPE_CHAN_CHROMA1_IN);
 vpdma_set_line_mode(ctx->dev->vpdma, line_mode, VPE_CHAN_CHROMA2_IN);
 vpdma_set_line_mode(ctx->dev->vpdma, line_mode, VPE_CHAN_CHROMA3_IN);


 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_LUMA1_IN);
 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_LUMA2_IN);
 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_LUMA3_IN);


 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_CHROMA1_IN);
 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_CHROMA2_IN);
 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_CHROMA3_IN);


 vpdma_set_frame_start_event(ctx->dev->vpdma, VPDMA_FSEVENT_CHANNEL_ACTIVE,
  VPE_CHAN_MV_IN);
}
