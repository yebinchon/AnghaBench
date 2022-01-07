
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_fmt {int color; } ;






__attribute__((used)) static inline int fimc_get_alpha_mask(struct fimc_fmt *fmt)
{
 switch (fmt->color) {
 case 130: return 0x0f;
 case 129: return 0x01;
 case 128: return 0xff;
 default: return 0;
 };
}
