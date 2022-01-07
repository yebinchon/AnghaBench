
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_context {int dummy; } ;


 scalar_t__ has_xsl_error (struct ocxl_context*) ;

__attribute__((used)) static bool afu_events_pending(struct ocxl_context *ctx)
{
 if (has_xsl_error(ctx))
  return 1;
 return 0;
}
