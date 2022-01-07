
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int VPIF_CH2_CTRL ;
 int VPIF_CH_HANC_EN_BIT ;
 int VPIF_CH_VANC_EN_BIT ;
 int vpif_clr_bit (int ,int ) ;
 int vpif_set_bit (int ,int ) ;

__attribute__((used)) static inline void channel2_raw_enable(int enable, u8 index)
{
 u32 mask;

 if (1 == index)
  mask = VPIF_CH_VANC_EN_BIT;
 else
  mask = VPIF_CH_HANC_EN_BIT;

 if (enable)
  vpif_set_bit(VPIF_CH2_CTRL, mask);
 else
  vpif_clr_bit(VPIF_CH2_CTRL, mask);
}
