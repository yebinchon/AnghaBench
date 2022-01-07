
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_h3a_aewb_config {int win_height; int ver_win_count; int buf_size; void* subsample_hor_inc; void* subsample_ver_inc; void* blk_win_height; scalar_t__ ver_win_start; scalar_t__ blk_ver_win_start; int hor_win_count; int win_width; int saturation_limit; } ;
struct ispstat {struct omap3isp_h3a_aewb_config* recover_priv; struct isp_device* isp; int event_type; struct omap3isp_h3a_aewb_config* priv; int * ops; } ;
struct isp_device {int dev; struct ispstat isp_aewb; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMAP3ISP_AEWB_MAX_SATURATION_LIM ;
 void* OMAP3ISP_AEWB_MIN_SUB_INC ;
 int OMAP3ISP_AEWB_MIN_WINHC ;
 int OMAP3ISP_AEWB_MIN_WINVC ;
 void* OMAP3ISP_AEWB_MIN_WIN_H ;
 int OMAP3ISP_AEWB_MIN_WIN_W ;
 int V4L2_EVENT_OMAP3ISP_AEWB ;
 int dev_err (int ,char*) ;
 int h3a_aewb_get_buf_size (struct omap3isp_h3a_aewb_config*) ;
 int h3a_aewb_ops ;
 int h3a_aewb_subdev_ops ;
 scalar_t__ h3a_aewb_validate_params (struct ispstat*,struct omap3isp_h3a_aewb_config*) ;
 int kfree (struct omap3isp_h3a_aewb_config*) ;
 struct omap3isp_h3a_aewb_config* kzalloc (int,int ) ;
 int omap3isp_stat_init (struct ispstat*,char*,int *) ;

int omap3isp_h3a_aewb_init(struct isp_device *isp)
{
 struct ispstat *aewb = &isp->isp_aewb;
 struct omap3isp_h3a_aewb_config *aewb_cfg;
 struct omap3isp_h3a_aewb_config *aewb_recover_cfg = ((void*)0);
 int ret;

 aewb_cfg = kzalloc(sizeof(*aewb_cfg), GFP_KERNEL);
 if (!aewb_cfg)
  return -ENOMEM;

 aewb->ops = &h3a_aewb_ops;
 aewb->priv = aewb_cfg;
 aewb->event_type = V4L2_EVENT_OMAP3ISP_AEWB;
 aewb->isp = isp;


 aewb_recover_cfg = kzalloc(sizeof(*aewb_recover_cfg), GFP_KERNEL);
 if (!aewb_recover_cfg) {
  dev_err(aewb->isp->dev,
   "AEWB: cannot allocate memory for recover configuration.\n");
  ret = -ENOMEM;
  goto err;
 }

 aewb_recover_cfg->saturation_limit = OMAP3ISP_AEWB_MAX_SATURATION_LIM;
 aewb_recover_cfg->win_height = OMAP3ISP_AEWB_MIN_WIN_H;
 aewb_recover_cfg->win_width = OMAP3ISP_AEWB_MIN_WIN_W;
 aewb_recover_cfg->ver_win_count = OMAP3ISP_AEWB_MIN_WINVC;
 aewb_recover_cfg->hor_win_count = OMAP3ISP_AEWB_MIN_WINHC;
 aewb_recover_cfg->blk_ver_win_start = aewb_recover_cfg->ver_win_start +
  aewb_recover_cfg->win_height * aewb_recover_cfg->ver_win_count;
 aewb_recover_cfg->blk_win_height = OMAP3ISP_AEWB_MIN_WIN_H;
 aewb_recover_cfg->subsample_ver_inc = OMAP3ISP_AEWB_MIN_SUB_INC;
 aewb_recover_cfg->subsample_hor_inc = OMAP3ISP_AEWB_MIN_SUB_INC;

 if (h3a_aewb_validate_params(aewb, aewb_recover_cfg)) {
  dev_err(aewb->isp->dev,
   "AEWB: recover configuration is invalid.\n");
  ret = -EINVAL;
  goto err;
 }

 aewb_recover_cfg->buf_size = h3a_aewb_get_buf_size(aewb_recover_cfg);
 aewb->recover_priv = aewb_recover_cfg;

 ret = omap3isp_stat_init(aewb, "AEWB", &h3a_aewb_subdev_ops);

err:
 if (ret) {
  kfree(aewb_cfg);
  kfree(aewb_recover_cfg);
 }

 return ret;
}
