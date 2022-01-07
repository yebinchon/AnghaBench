
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_hist_config {int dummy; } ;
struct ispstat {int * dma_ch; int event_type; struct omap3isp_hist_config* priv; int * ops; struct isp_device* isp; } ;
struct isp_device {int dev; struct ispstat isp_hist; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ HIST_CONFIG_DMA ;
 scalar_t__ IS_ERR (int *) ;
 int IS_ERR_OR_NULL (int *) ;
 int PTR_ERR (int *) ;
 int V4L2_EVENT_OMAP3ISP_HIST ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_chan_name (int *) ;
 int dma_release_channel (int *) ;
 int * dma_request_chan_by_mask (int *) ;
 int hist_ops ;
 int hist_subdev_ops ;
 int kfree (struct omap3isp_hist_config*) ;
 struct omap3isp_hist_config* kzalloc (int,int ) ;
 int omap3isp_stat_init (struct ispstat*,char*,int *) ;

int omap3isp_hist_init(struct isp_device *isp)
{
 struct ispstat *hist = &isp->isp_hist;
 struct omap3isp_hist_config *hist_cfg;
 int ret;

 hist_cfg = kzalloc(sizeof(*hist_cfg), GFP_KERNEL);
 if (hist_cfg == ((void*)0))
  return -ENOMEM;

 hist->isp = isp;

 if (HIST_CONFIG_DMA) {
  dma_cap_mask_t mask;
  dma_cap_zero(mask);
  dma_cap_set(DMA_SLAVE, mask);
  hist->dma_ch = dma_request_chan_by_mask(&mask);
  if (IS_ERR(hist->dma_ch)) {
   ret = PTR_ERR(hist->dma_ch);
   if (ret == -EPROBE_DEFER)
    goto err;

   hist->dma_ch = ((void*)0);
   dev_warn(isp->dev,
     "hist: DMA channel request failed, using PIO\n");
  } else {
   dev_dbg(isp->dev, "hist: using DMA channel %s\n",
    dma_chan_name(hist->dma_ch));
  }
 }

 hist->ops = &hist_ops;
 hist->priv = hist_cfg;
 hist->event_type = V4L2_EVENT_OMAP3ISP_HIST;

 ret = omap3isp_stat_init(hist, "histogram", &hist_subdev_ops);

err:
 if (ret) {
  if (!IS_ERR_OR_NULL(hist->dma_ch))
   dma_release_channel(hist->dma_ch);
  kfree(hist_cfg);
 }

 return ret;
}
