
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int slice_mode; int slice_max_mb; int slice_max_bits; } ;
struct coda_ctx {TYPE_1__ params; } ;


 int CODA_SLICING_MODE_MASK ;
 int CODA_SLICING_MODE_OFFSET ;
 int CODA_SLICING_SIZE_MASK ;
 int CODA_SLICING_SIZE_OFFSET ;
 int CODA_SLICING_UNIT_MASK ;
 int CODA_SLICING_UNIT_OFFSET ;




__attribute__((used)) static u32 coda_slice_mode(struct coda_ctx *ctx)
{
 int size, unit;

 switch (ctx->params.slice_mode) {
 case 128:
 default:
  return 0;
 case 129:
  size = ctx->params.slice_max_mb;
  unit = 1;
  break;
 case 130:
  size = ctx->params.slice_max_bits;
  unit = 0;
  break;
 }

 return ((size & CODA_SLICING_SIZE_MASK) << CODA_SLICING_SIZE_OFFSET) |
        ((unit & CODA_SLICING_UNIT_MASK) << CODA_SLICING_UNIT_OFFSET) |
        ((1 & CODA_SLICING_MODE_MASK) << CODA_SLICING_MODE_OFFSET);
}
