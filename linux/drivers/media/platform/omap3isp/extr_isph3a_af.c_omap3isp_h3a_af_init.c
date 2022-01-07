
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_inc; int v_cnt; int h_cnt; int height; int width; int h_start; } ;
struct omap3isp_h3a_af_config {int buf_size; TYPE_1__ paxel; } ;
struct ispstat {struct omap3isp_h3a_af_config* recover_priv; struct isp_device* isp; int event_type; struct omap3isp_h3a_af_config* priv; int * ops; } ;
struct isp_device {int dev; struct ispstat isp_af; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMAP3ISP_AF_PAXEL_HEIGHT_MIN ;
 int OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN ;
 int OMAP3ISP_AF_PAXEL_HZSTART_MIN ;
 int OMAP3ISP_AF_PAXEL_INCREMENT_MIN ;
 int OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN ;
 int OMAP3ISP_AF_PAXEL_WIDTH_MIN ;
 int V4L2_EVENT_OMAP3ISP_AF ;
 int dev_err (int ,char*) ;
 int h3a_af_get_buf_size (struct omap3isp_h3a_af_config*) ;
 int h3a_af_ops ;
 int h3a_af_subdev_ops ;
 scalar_t__ h3a_af_validate_params (struct ispstat*,struct omap3isp_h3a_af_config*) ;
 int kfree (struct omap3isp_h3a_af_config*) ;
 struct omap3isp_h3a_af_config* kzalloc (int,int ) ;
 int omap3isp_stat_init (struct ispstat*,char*,int *) ;

int omap3isp_h3a_af_init(struct isp_device *isp)
{
 struct ispstat *af = &isp->isp_af;
 struct omap3isp_h3a_af_config *af_cfg;
 struct omap3isp_h3a_af_config *af_recover_cfg = ((void*)0);
 int ret;

 af_cfg = kzalloc(sizeof(*af_cfg), GFP_KERNEL);
 if (af_cfg == ((void*)0))
  return -ENOMEM;

 af->ops = &h3a_af_ops;
 af->priv = af_cfg;
 af->event_type = V4L2_EVENT_OMAP3ISP_AF;
 af->isp = isp;


 af_recover_cfg = kzalloc(sizeof(*af_recover_cfg), GFP_KERNEL);
 if (!af_recover_cfg) {
  dev_err(af->isp->dev,
   "AF: cannot allocate memory for recover configuration.\n");
  ret = -ENOMEM;
  goto err;
 }

 af_recover_cfg->paxel.h_start = OMAP3ISP_AF_PAXEL_HZSTART_MIN;
 af_recover_cfg->paxel.width = OMAP3ISP_AF_PAXEL_WIDTH_MIN;
 af_recover_cfg->paxel.height = OMAP3ISP_AF_PAXEL_HEIGHT_MIN;
 af_recover_cfg->paxel.h_cnt = OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN;
 af_recover_cfg->paxel.v_cnt = OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN;
 af_recover_cfg->paxel.line_inc = OMAP3ISP_AF_PAXEL_INCREMENT_MIN;
 if (h3a_af_validate_params(af, af_recover_cfg)) {
  dev_err(af->isp->dev,
   "AF: recover configuration is invalid.\n");
  ret = -EINVAL;
  goto err;
 }

 af_recover_cfg->buf_size = h3a_af_get_buf_size(af_recover_cfg);
 af->recover_priv = af_recover_cfg;

 ret = omap3isp_stat_init(af, "AF", &h3a_af_subdev_ops);

err:
 if (ret) {
  kfree(af_cfg);
  kfree(af_recover_cfg);
 }

 return ret;
}
