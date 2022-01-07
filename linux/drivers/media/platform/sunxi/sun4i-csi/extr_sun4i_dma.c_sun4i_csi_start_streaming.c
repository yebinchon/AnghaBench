
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_fwnode_bus_parallel {int flags; } ;
struct sun4i_csi_format {int output; int input; } ;
struct TYPE_8__ {int paddr; int vaddr; scalar_t__ size; } ;
struct TYPE_7__ {int entity; int pipe; } ;
struct TYPE_6__ {unsigned int num_planes; int width; TYPE_1__* plane_fmt; int height; int pixelformat; } ;
struct sun4i_csi {int qlock; TYPE_4__ scratch; int dev; TYPE_3__ vdev; int src_subdev; scalar_t__ regs; TYPE_2__ fmt; scalar_t__ sequence; struct v4l2_fwnode_bus_parallel bus; } ;
struct TYPE_5__ {int bytesperline; scalar_t__ sizeimage; } ;


 int CSI_BUF_CTRL_DBE ;
 scalar_t__ CSI_BUF_CTRL_REG ;
 scalar_t__ CSI_BUF_LEN_REG ;
 int CSI_CFG_HSYNC_POL (unsigned long) ;
 int CSI_CFG_INPUT_FMT (int ) ;
 int CSI_CFG_OUTPUT_FMT (int ) ;
 int CSI_CFG_PCLK_POL (unsigned long) ;
 scalar_t__ CSI_CFG_REG ;
 int CSI_CFG_VSYNC_POL (unsigned long) ;
 scalar_t__ CSI_INT_EN_REG ;
 int CSI_INT_FRM_DONE ;
 int CSI_WIN_CTRL_H_ACTIVE (int ) ;
 scalar_t__ CSI_WIN_CTRL_H_REG ;
 int CSI_WIN_CTRL_W_ACTIVE (int) ;
 scalar_t__ CSI_WIN_CTRL_W_REG ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_MBUS_DATA_ACTIVE_HIGH ;
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 int VB2_BUF_STATE_QUEUED ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dma_alloc_coherent (int ,scalar_t__,int *,int ) ;
 int dma_free_coherent (int ,scalar_t__,int ,int ) ;
 int media_pipeline_start (int *,int *) ;
 int media_pipeline_stop (int *) ;
 int return_all_buffers (struct sun4i_csi*,int ) ;
 int s_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun4i_csi_buffer_fill_all (struct sun4i_csi*) ;
 int sun4i_csi_capture_start (struct sun4i_csi*) ;
 int sun4i_csi_capture_stop (struct sun4i_csi*) ;
 struct sun4i_csi_format* sun4i_csi_find_format (int *,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 struct sun4i_csi* vb2_get_drv_priv (struct vb2_queue*) ;
 int video ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_csi_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct sun4i_csi *csi = vb2_get_drv_priv(vq);
 struct v4l2_fwnode_bus_parallel *bus = &csi->bus;
 const struct sun4i_csi_format *csi_fmt;
 unsigned long hsync_pol, pclk_pol, vsync_pol;
 unsigned long flags;
 unsigned int i;
 int ret;

 csi_fmt = sun4i_csi_find_format(&csi->fmt.pixelformat, ((void*)0));
 if (!csi_fmt)
  return -EINVAL;

 dev_dbg(csi->dev, "Starting capture\n");

 csi->sequence = 0;
 csi->scratch.size = 0;
 for (i = 0; i < csi->fmt.num_planes; i++)
  csi->scratch.size += csi->fmt.plane_fmt[i].sizeimage;

 csi->scratch.vaddr = dma_alloc_coherent(csi->dev,
      csi->scratch.size,
      &csi->scratch.paddr,
      GFP_KERNEL);
 if (!csi->scratch.vaddr) {
  dev_err(csi->dev, "Failed to allocate scratch buffer\n");
  ret = -ENOMEM;
  goto err_clear_dma_queue;
 }

 ret = media_pipeline_start(&csi->vdev.entity, &csi->vdev.pipe);
 if (ret < 0)
  goto err_free_scratch_buffer;

 spin_lock_irqsave(&csi->qlock, flags);


 writel(CSI_WIN_CTRL_W_ACTIVE(csi->fmt.width * 2),
        csi->regs + CSI_WIN_CTRL_W_REG);
 writel(CSI_WIN_CTRL_H_ACTIVE(csi->fmt.height),
        csi->regs + CSI_WIN_CTRL_H_REG);

 hsync_pol = !!(bus->flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH);
 pclk_pol = !!(bus->flags & V4L2_MBUS_DATA_ACTIVE_HIGH);
 vsync_pol = !!(bus->flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH);
 writel(CSI_CFG_INPUT_FMT(csi_fmt->input) |
        CSI_CFG_OUTPUT_FMT(csi_fmt->output) |
        CSI_CFG_VSYNC_POL(vsync_pol) |
        CSI_CFG_HSYNC_POL(hsync_pol) |
        CSI_CFG_PCLK_POL(pclk_pol),
        csi->regs + CSI_CFG_REG);


 writel(csi->fmt.plane_fmt[0].bytesperline,
        csi->regs + CSI_BUF_LEN_REG);


 ret = sun4i_csi_buffer_fill_all(csi);
 if (ret) {
  spin_unlock_irqrestore(&csi->qlock, flags);
  goto err_disable_pipeline;
 }


 writel(CSI_BUF_CTRL_DBE, csi->regs + CSI_BUF_CTRL_REG);


 writel(CSI_INT_FRM_DONE, csi->regs + 0x34);


 writel(CSI_INT_FRM_DONE, csi->regs + CSI_INT_EN_REG);

 sun4i_csi_capture_start(csi);

 spin_unlock_irqrestore(&csi->qlock, flags);

 ret = v4l2_subdev_call(csi->src_subdev, video, s_stream, 1);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  goto err_disable_device;

 return 0;

err_disable_device:
 sun4i_csi_capture_stop(csi);

err_disable_pipeline:
 media_pipeline_stop(&csi->vdev.entity);

err_free_scratch_buffer:
 dma_free_coherent(csi->dev, csi->scratch.size, csi->scratch.vaddr,
     csi->scratch.paddr);

err_clear_dma_queue:
 spin_lock_irqsave(&csi->qlock, flags);
 return_all_buffers(csi, VB2_BUF_STATE_QUEUED);
 spin_unlock_irqrestore(&csi->qlock, flags);

 return ret;
}
