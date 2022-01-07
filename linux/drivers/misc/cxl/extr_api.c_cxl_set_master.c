
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int master; } ;



void cxl_set_master(struct cxl_context *ctx)
{
 ctx->master = 1;
}
