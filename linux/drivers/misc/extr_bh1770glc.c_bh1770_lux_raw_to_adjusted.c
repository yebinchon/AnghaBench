
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct bh1770_chip {int lux_corr; } ;


 int BH1770_LUX_CORR_SCALE ;
 scalar_t__ BH1770_LUX_RANGE ;
 scalar_t__ min (int,int) ;

__attribute__((used)) static inline u16 bh1770_lux_raw_to_adjusted(struct bh1770_chip *chip, u16 raw)
{
 u32 lux;
 lux = ((u32)raw * chip->lux_corr) / BH1770_LUX_CORR_SCALE;
 return min(lux, (u32)BH1770_LUX_RANGE);
}
