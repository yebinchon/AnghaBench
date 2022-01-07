
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_dev {TYPE_1__* devtype; } ;
struct coda_ctx {scalar_t__ idx; int bit_stream_param; struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;


 scalar_t__ CODA_960 ;
 int CODA_BIT_STREAM_END_FLAG ;
 int CODA_REG_BIT_BIT_STREAM_PARAM ;
 int CODA_REG_BIT_RUN_INDEX ;
 scalar_t__ coda_isbusy (struct coda_dev*) ;
 scalar_t__ coda_read (struct coda_dev*,int ) ;
 int coda_write (struct coda_dev*,int ,int ) ;

void coda_bit_stream_end_flag(struct coda_ctx *ctx)
{
 struct coda_dev *dev = ctx->dev;

 ctx->bit_stream_param |= CODA_BIT_STREAM_END_FLAG;


 if ((dev->devtype->product == CODA_960) &&
     coda_isbusy(dev) &&
     (ctx->idx == coda_read(dev, CODA_REG_BIT_RUN_INDEX))) {
  coda_write(dev, ctx->bit_stream_param,
      CODA_REG_BIT_BIT_STREAM_PARAM);
 }
}
