
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct coda_dev {TYPE_2__* devtype; } ;
struct TYPE_3__ {int * vaddr; } ;
struct coda_ctx {TYPE_1__ parabuf; struct coda_dev* dev; } ;
struct TYPE_4__ {scalar_t__ product; } ;


 scalar_t__ CODA_DX6 ;

__attribute__((used)) static void coda_parabuf_write(struct coda_ctx *ctx, int index, u32 value)
{
 struct coda_dev *dev = ctx->dev;
 u32 *p = ctx->parabuf.vaddr;

 if (dev->devtype->product == CODA_DX6)
  p[index] = value;
 else
  p[index ^ 1] = value;
}
