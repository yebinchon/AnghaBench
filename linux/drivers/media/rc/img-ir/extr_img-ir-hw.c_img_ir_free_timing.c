
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct img_ir_free_timing {int minlen; int maxlen; unsigned long ft_min; } ;


 unsigned int IMG_IR_FT_MIN_SHIFT ;
 unsigned int IMG_IR_MAXLEN_SHIFT ;
 unsigned int IMG_IR_MINLEN_SHIFT ;

__attribute__((used)) static u32 img_ir_free_timing(const struct img_ir_free_timing *timing,
         unsigned long clock_hz)
{
 unsigned int minlen, maxlen, ft_min;

 if (timing->minlen < 30)
  minlen = timing->minlen & -2;
 else
  minlen = 30;

 if (timing->maxlen < 48)
  maxlen = (timing->maxlen + 1) & -2;
 else
  maxlen = 48;

 ft_min = (timing->ft_min*clock_hz + 999999) / 1000000;
 ft_min = (ft_min + 7) >> 3;

 return (maxlen << IMG_IR_MAXLEN_SHIFT) |
  (minlen << IMG_IR_MINLEN_SHIFT) |
  (ft_min << IMG_IR_FT_MIN_SHIFT);
}
