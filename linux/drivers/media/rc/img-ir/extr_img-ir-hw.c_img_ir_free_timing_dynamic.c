
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct img_ir_filter {int minlen; int maxlen; } ;


 unsigned int IMG_IR_MAXLEN ;
 unsigned int IMG_IR_MAXLEN_SHIFT ;
 unsigned int IMG_IR_MINLEN ;
 unsigned int IMG_IR_MINLEN_SHIFT ;

__attribute__((used)) static u32 img_ir_free_timing_dynamic(u32 st_ft, struct img_ir_filter *filter)
{
 unsigned int minlen, maxlen, newminlen, newmaxlen;


 newminlen = filter->minlen & -2;
 newmaxlen = (filter->maxlen + 1) & -2;

 minlen = (st_ft & IMG_IR_MINLEN) >> IMG_IR_MINLEN_SHIFT;
 maxlen = (st_ft & IMG_IR_MAXLEN) >> IMG_IR_MAXLEN_SHIFT;

 if (newminlen > minlen) {
  st_ft &= ~IMG_IR_MINLEN;
  st_ft |= newminlen << IMG_IR_MINLEN_SHIFT;
 }
 if (newmaxlen < maxlen) {
  st_ft &= ~IMG_IR_MAXLEN;
  st_ft |= newmaxlen << IMG_IR_MAXLEN_SHIFT;
 }
 return st_ft;
}
