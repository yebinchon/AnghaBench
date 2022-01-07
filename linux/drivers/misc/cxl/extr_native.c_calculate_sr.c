
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_context {int kernel; int master; } ;


 int cxl_calculate_sr (int ,int ,int,int ) ;
 int cxl_is_power9 () ;

__attribute__((used)) static u64 calculate_sr(struct cxl_context *ctx)
{
 return cxl_calculate_sr(ctx->master, ctx->kernel, 0,
    cxl_is_power9());
}
