
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH2_CLIP_ACTIVE_EN ;
 int VPIF_CH2_CLIP_ANC_EN ;
 int VPIF_CH2_CTRL ;
 int vpif_clr_bit (int ,int ) ;
 int vpif_set_bit (int ,int ) ;

__attribute__((used)) static inline void channel2_clipping_enable(int enable)
{
 if (enable) {
  vpif_set_bit(VPIF_CH2_CTRL, VPIF_CH2_CLIP_ANC_EN);
  vpif_set_bit(VPIF_CH2_CTRL, VPIF_CH2_CLIP_ACTIVE_EN);
 } else {
  vpif_clr_bit(VPIF_CH2_CTRL, VPIF_CH2_CLIP_ANC_EN);
  vpif_clr_bit(VPIF_CH2_CTRL, VPIF_CH2_CLIP_ACTIVE_EN);
 }
}
