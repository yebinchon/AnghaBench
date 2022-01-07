
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap3isp_h3a_aewb_config {int saturation_limit; int win_height; int win_width; int ver_win_count; int hor_win_count; int hor_win_start; int ver_win_start; int blk_ver_win_start; int blk_win_height; int subsample_ver_inc; int subsample_hor_inc; int buf_size; int alaw_enable; } ;
struct ispstat {scalar_t__ state; int buf_size; scalar_t__ inc_config; int config_counter; scalar_t__ update; int isp; TYPE_1__* active_buf; } ;
struct TYPE_2__ {int dma_addr; } ;


 int ISPH3A_AEWBUFST ;
 int ISPH3A_AEWINBLK ;
 int ISPH3A_AEWINBLK_WINH_SHIFT ;
 int ISPH3A_AEWINBLK_WINSV_SHIFT ;
 int ISPH3A_AEWINSTART ;
 int ISPH3A_AEWINSTART_WINSH_SHIFT ;
 int ISPH3A_AEWINSTART_WINSV_SHIFT ;
 int ISPH3A_AEWSUBWIN ;
 int ISPH3A_AEWSUBWIN_AEWINCH_SHIFT ;
 int ISPH3A_AEWSUBWIN_AEWINCV_SHIFT ;
 int ISPH3A_AEWWIN1 ;
 int ISPH3A_AEWWIN1_WINHC_SHIFT ;
 int ISPH3A_AEWWIN1_WINH_SHIFT ;
 int ISPH3A_AEWWIN1_WINVC_SHIFT ;
 int ISPH3A_AEWWIN1_WINW_SHIFT ;
 int ISPH3A_PCR ;
 int ISPH3A_PCR_AEW_ALAW_EN_SHIFT ;
 int ISPH3A_PCR_AEW_AVE2LMT_SHIFT ;
 int ISPH3A_PCR_AEW_MASK ;
 scalar_t__ ISPSTAT_DISABLED ;
 int OMAP3_ISP_IOMEM_H3A ;
 int isp_reg_clr_set (int ,int ,int ,int ,int) ;
 int isp_reg_writel (int ,int,int ,int ) ;

__attribute__((used)) static void h3a_aewb_setup_regs(struct ispstat *aewb, void *priv)
{
 struct omap3isp_h3a_aewb_config *conf = priv;
 u32 pcr;
 u32 win1;
 u32 start;
 u32 blk;
 u32 subwin;

 if (aewb->state == ISPSTAT_DISABLED)
  return;

 isp_reg_writel(aewb->isp, aewb->active_buf->dma_addr,
         OMAP3_ISP_IOMEM_H3A, ISPH3A_AEWBUFST);

 if (!aewb->update)
  return;


 pcr = conf->saturation_limit << ISPH3A_PCR_AEW_AVE2LMT_SHIFT;
 pcr |= !!conf->alaw_enable << ISPH3A_PCR_AEW_ALAW_EN_SHIFT;

 win1 = ((conf->win_height >> 1) - 1) << ISPH3A_AEWWIN1_WINH_SHIFT;
 win1 |= ((conf->win_width >> 1) - 1) << ISPH3A_AEWWIN1_WINW_SHIFT;
 win1 |= (conf->ver_win_count - 1) << ISPH3A_AEWWIN1_WINVC_SHIFT;
 win1 |= (conf->hor_win_count - 1) << ISPH3A_AEWWIN1_WINHC_SHIFT;

 start = conf->hor_win_start << ISPH3A_AEWINSTART_WINSH_SHIFT;
 start |= conf->ver_win_start << ISPH3A_AEWINSTART_WINSV_SHIFT;

 blk = conf->blk_ver_win_start << ISPH3A_AEWINBLK_WINSV_SHIFT;
 blk |= ((conf->blk_win_height >> 1) - 1) << ISPH3A_AEWINBLK_WINH_SHIFT;

 subwin = ((conf->subsample_ver_inc >> 1) - 1) <<
   ISPH3A_AEWSUBWIN_AEWINCV_SHIFT;
 subwin |= ((conf->subsample_hor_inc >> 1) - 1) <<
    ISPH3A_AEWSUBWIN_AEWINCH_SHIFT;

 isp_reg_writel(aewb->isp, win1, OMAP3_ISP_IOMEM_H3A, ISPH3A_AEWWIN1);
 isp_reg_writel(aewb->isp, start, OMAP3_ISP_IOMEM_H3A,
         ISPH3A_AEWINSTART);
 isp_reg_writel(aewb->isp, blk, OMAP3_ISP_IOMEM_H3A, ISPH3A_AEWINBLK);
 isp_reg_writel(aewb->isp, subwin, OMAP3_ISP_IOMEM_H3A,
         ISPH3A_AEWSUBWIN);
 isp_reg_clr_set(aewb->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
   ISPH3A_PCR_AEW_MASK, pcr);

 aewb->update = 0;
 aewb->config_counter += aewb->inc_config;
 aewb->inc_config = 0;
 aewb->buf_size = conf->buf_size;
}
