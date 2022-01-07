
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_hist_config {int num_acc_frames; int buf_size; } ;
struct ispstat {int update; int inc_config; int configured; struct omap3isp_hist_config* priv; } ;


 scalar_t__ hist_comp_params (struct ispstat*,struct omap3isp_hist_config*) ;
 int hist_get_buf_size (struct omap3isp_hist_config*) ;
 int memcpy (struct omap3isp_hist_config*,struct omap3isp_hist_config*,int) ;

__attribute__((used)) static void hist_set_params(struct ispstat *hist, void *new_conf)
{
 struct omap3isp_hist_config *user_cfg = new_conf;
 struct omap3isp_hist_config *cur_cfg = hist->priv;

 if (!hist->configured || hist_comp_params(hist, user_cfg)) {
  memcpy(cur_cfg, user_cfg, sizeof(*user_cfg));
  if (user_cfg->num_acc_frames == 0)
   user_cfg->num_acc_frames = 1;
  hist->inc_config++;
  hist->update = 1;






  cur_cfg->buf_size = hist_get_buf_size(cur_cfg);

 }
}
