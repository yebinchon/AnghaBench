
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ width; scalar_t__ height; scalar_t__ h_start; scalar_t__ v_start; scalar_t__ h_cnt; scalar_t__ v_cnt; scalar_t__ line_inc; } ;
struct TYPE_5__ {scalar_t__ h_start; scalar_t__* coeff_set0; scalar_t__* coeff_set1; } ;
struct TYPE_4__ {scalar_t__ enable; scalar_t__ threshold; } ;
struct omap3isp_h3a_af_config {scalar_t__ alaw_enable; scalar_t__ rgb_pos; scalar_t__ fvmode; int buf_size; TYPE_3__ paxel; TYPE_2__ iir; TYPE_1__ hmf; } ;
struct ispstat {int update; int inc_config; int configured; struct omap3isp_h3a_af_config* priv; } ;


 int OMAP3ISP_AF_NUM_COEF ;
 int h3a_af_get_buf_size (struct omap3isp_h3a_af_config*) ;
 int memcpy (struct omap3isp_h3a_af_config*,struct omap3isp_h3a_af_config*,int) ;

__attribute__((used)) static void h3a_af_set_params(struct ispstat *af, void *new_conf)
{
 struct omap3isp_h3a_af_config *user_cfg = new_conf;
 struct omap3isp_h3a_af_config *cur_cfg = af->priv;
 int update = 0;
 int index;


 if (cur_cfg->alaw_enable != user_cfg->alaw_enable) {
  update = 1;
  goto out;
 }


 if (cur_cfg->hmf.enable != user_cfg->hmf.enable) {
  update = 1;
  goto out;
 }
 if (cur_cfg->hmf.threshold != user_cfg->hmf.threshold) {
  update = 1;
  goto out;
 }


 if (cur_cfg->rgb_pos != user_cfg->rgb_pos) {
  update = 1;
  goto out;
 }


 if (cur_cfg->iir.h_start != user_cfg->iir.h_start) {
  update = 1;
  goto out;
 }
 for (index = 0; index < OMAP3ISP_AF_NUM_COEF; index++) {
  if (cur_cfg->iir.coeff_set0[index] !=
    user_cfg->iir.coeff_set0[index]) {
   update = 1;
   goto out;
  }
  if (cur_cfg->iir.coeff_set1[index] !=
    user_cfg->iir.coeff_set1[index]) {
   update = 1;
   goto out;
  }
 }


 if ((cur_cfg->paxel.width != user_cfg->paxel.width) ||
     (cur_cfg->paxel.height != user_cfg->paxel.height) ||
     (cur_cfg->paxel.h_start != user_cfg->paxel.h_start) ||
     (cur_cfg->paxel.v_start != user_cfg->paxel.v_start) ||
     (cur_cfg->paxel.h_cnt != user_cfg->paxel.h_cnt) ||
     (cur_cfg->paxel.v_cnt != user_cfg->paxel.v_cnt) ||
     (cur_cfg->paxel.line_inc != user_cfg->paxel.line_inc)) {
  update = 1;
  goto out;
 }


 if (cur_cfg->fvmode != user_cfg->fvmode)
  update = 1;

out:
 if (update || !af->configured) {
  memcpy(cur_cfg, user_cfg, sizeof(*cur_cfg));
  af->inc_config++;
  af->update = 1;






  cur_cfg->buf_size = h3a_af_get_buf_size(cur_cfg);
 }
}
