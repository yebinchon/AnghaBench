
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil6210_priv {int rx_max_burst_duration; } ;


 int RGF_INT_COUNT_ON_SPECIAL_EVT ;
 int RGF_INT_CTRL_INT_GEN_CFG_0 ;
 int RGF_INT_CTRL_INT_GEN_CFG_1 ;
 int RGF_INT_GEN_IDLE_TIME_LIMIT ;
 int RGF_INT_GEN_TIME_UNIT_LIMIT ;
 int WIL_EDMA_AGG_WATERMARK ;
 int WIL_EDMA_AGG_WATERMARK_POS ;
 int WIL_EDMA_IDLE_TIME_LIMIT_USEC ;
 int WIL_EDMA_TIME_UNIT_CLK_CYCLES ;
 int wil_c (struct wil6210_priv*,int ,int) ;
 int wil_s (struct wil6210_priv*,int ,int) ;
 int wil_w (struct wil6210_priv*,int ,int) ;

void wil_configure_interrupt_moderation_edma(struct wil6210_priv *wil)
{
 u32 moderation;

 wil_s(wil, RGF_INT_GEN_IDLE_TIME_LIMIT, WIL_EDMA_IDLE_TIME_LIMIT_USEC);

 wil_s(wil, RGF_INT_GEN_TIME_UNIT_LIMIT, WIL_EDMA_TIME_UNIT_CLK_CYCLES);


 moderation = wil->rx_max_burst_duration |
  (WIL_EDMA_AGG_WATERMARK << WIL_EDMA_AGG_WATERMARK_POS);
 wil_w(wil, RGF_INT_CTRL_INT_GEN_CFG_0, moderation);
 wil_w(wil, RGF_INT_CTRL_INT_GEN_CFG_1, moderation);




 wil_c(wil, RGF_INT_COUNT_ON_SPECIAL_EVT, 0x1FE);
 wil_s(wil, RGF_INT_COUNT_ON_SPECIAL_EVT, 0x1);
}
