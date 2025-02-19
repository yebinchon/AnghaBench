
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct omap3isp_h3a_af_paxel {int h_cnt; int v_cnt; int height; int width; int line_inc; scalar_t__ h_start; } ;
struct omap3isp_h3a_af_iir {scalar_t__ h_start; scalar_t__* coeff_set0; scalar_t__* coeff_set1; } ;
struct omap3isp_h3a_af_config {scalar_t__ buf_size; struct omap3isp_h3a_af_iir iir; struct omap3isp_h3a_af_paxel paxel; } ;
struct ispstat {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_OUT_OF_BOUNDS (int,int ,int ) ;
 scalar_t__ OMAP3ISP_AF_COEF_MAX ;
 int OMAP3ISP_AF_IIRSH_MAX ;
 int OMAP3ISP_AF_IIRSH_MIN ;
 scalar_t__ OMAP3ISP_AF_MAX_BUF_SIZE ;
 int OMAP3ISP_AF_NUM_COEF ;
 int OMAP3ISP_AF_PAXEL_HEIGHT_MAX ;
 int OMAP3ISP_AF_PAXEL_HEIGHT_MIN ;
 int OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MAX ;
 int OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN ;
 int OMAP3ISP_AF_PAXEL_HZSTART_MAX ;
 int OMAP3ISP_AF_PAXEL_HZSTART_MIN ;
 int OMAP3ISP_AF_PAXEL_INCREMENT_MAX ;
 int OMAP3ISP_AF_PAXEL_INCREMENT_MIN ;
 int OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MAX ;
 int OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN ;
 int OMAP3ISP_AF_PAXEL_WIDTH_MAX ;
 int OMAP3ISP_AF_PAXEL_WIDTH_MIN ;
 scalar_t__ h3a_af_get_buf_size (struct omap3isp_h3a_af_config*) ;

__attribute__((used)) static int h3a_af_validate_params(struct ispstat *af, void *new_conf)
{
 struct omap3isp_h3a_af_config *user_cfg = new_conf;
 struct omap3isp_h3a_af_paxel *paxel_cfg = &user_cfg->paxel;
 struct omap3isp_h3a_af_iir *iir_cfg = &user_cfg->iir;
 int index;
 u32 buf_size;


 if (IS_OUT_OF_BOUNDS(paxel_cfg->h_cnt,
        OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN,
        OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MAX))
  return -EINVAL;


 if (IS_OUT_OF_BOUNDS(paxel_cfg->v_cnt,
        OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN,
        OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MAX))
  return -EINVAL;

 if (IS_OUT_OF_BOUNDS(paxel_cfg->height, OMAP3ISP_AF_PAXEL_HEIGHT_MIN,
        OMAP3ISP_AF_PAXEL_HEIGHT_MAX) ||
     paxel_cfg->height % 2)
  return -EINVAL;


 if (IS_OUT_OF_BOUNDS(paxel_cfg->width, OMAP3ISP_AF_PAXEL_WIDTH_MIN,
        OMAP3ISP_AF_PAXEL_WIDTH_MAX) ||
     paxel_cfg->width % 2)
  return -EINVAL;


 if (IS_OUT_OF_BOUNDS(paxel_cfg->line_inc,
        OMAP3ISP_AF_PAXEL_INCREMENT_MIN,
        OMAP3ISP_AF_PAXEL_INCREMENT_MAX) ||
     paxel_cfg->line_inc % 2)
  return -EINVAL;


 if ((paxel_cfg->h_start < iir_cfg->h_start) ||
     IS_OUT_OF_BOUNDS(paxel_cfg->h_start,
        OMAP3ISP_AF_PAXEL_HZSTART_MIN,
        OMAP3ISP_AF_PAXEL_HZSTART_MAX))
  return -EINVAL;


 for (index = 0; index < OMAP3ISP_AF_NUM_COEF; index++) {
  if ((iir_cfg->coeff_set0[index]) > OMAP3ISP_AF_COEF_MAX)
   return -EINVAL;

  if ((iir_cfg->coeff_set1[index]) > OMAP3ISP_AF_COEF_MAX)
   return -EINVAL;
 }

 if (IS_OUT_OF_BOUNDS(iir_cfg->h_start, OMAP3ISP_AF_IIRSH_MIN,
        OMAP3ISP_AF_IIRSH_MAX))
  return -EINVAL;


 if ((paxel_cfg->h_cnt * paxel_cfg->v_cnt > 9) &&
     (paxel_cfg->width * paxel_cfg->height == 12))
  return -EINVAL;

 buf_size = h3a_af_get_buf_size(user_cfg);
 if (buf_size > user_cfg->buf_size)

  user_cfg->buf_size = buf_size;
 else if (user_cfg->buf_size > OMAP3ISP_AF_MAX_BUF_SIZE)
  user_cfg->buf_size = OMAP3ISP_AF_MAX_BUF_SIZE;

 return 0;
}
