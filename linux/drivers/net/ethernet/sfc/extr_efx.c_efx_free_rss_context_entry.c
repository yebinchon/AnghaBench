
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rss_context {int list; } ;


 int kfree (struct efx_rss_context*) ;
 int list_del (int *) ;

void efx_free_rss_context_entry(struct efx_rss_context *ctx)
{
 list_del(&ctx->list);
 kfree(ctx);
}
