
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bh1770_chip {int lux_corr; } ;


 int BH1770_LUX_CORR_SCALE ;

__attribute__((used)) static inline u16 bh1770_lux_adjusted_to_raw(struct bh1770_chip *chip,
     u16 adjusted)
{
 return (u32)adjusted * BH1770_LUX_CORR_SCALE / chip->lux_corr;
}
