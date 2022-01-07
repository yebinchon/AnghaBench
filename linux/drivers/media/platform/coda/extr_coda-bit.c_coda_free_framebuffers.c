
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_ctx {TYPE_1__* internal_frames; int dev; } ;
struct TYPE_2__ {int buf; } ;


 int CODA_MAX_FRAMEBUFFERS ;
 int coda_free_aux_buf (int ,int *) ;

__attribute__((used)) static void coda_free_framebuffers(struct coda_ctx *ctx)
{
 int i;

 for (i = 0; i < CODA_MAX_FRAMEBUFFERS; i++)
  coda_free_aux_buf(ctx->dev, &ctx->internal_frames[i].buf);
}
