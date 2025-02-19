
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cal_fmt {scalar_t__ code; } ;
struct cal_ctx {unsigned int num_active_fmt; struct cal_fmt** active_fmt; } ;



__attribute__((used)) static const struct cal_fmt *find_format_by_code(struct cal_ctx *ctx,
       u32 code)
{
 const struct cal_fmt *fmt;
 unsigned int k;

 for (k = 0; k < ctx->num_active_fmt; k++) {
  fmt = ctx->active_fmt[k];
  if (fmt->code == code)
   return fmt;
 }

 return ((void*)0);
}
