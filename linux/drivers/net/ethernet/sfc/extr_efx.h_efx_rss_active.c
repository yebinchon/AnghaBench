
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rss_context {scalar_t__ context_id; } ;


 scalar_t__ EFX_EF10_RSS_CONTEXT_INVALID ;

__attribute__((used)) static inline bool efx_rss_active(struct efx_rss_context *ctx)
{
 return ctx->context_id != EFX_EF10_RSS_CONTEXT_INVALID;
}
