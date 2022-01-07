
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_ctx {int dummy; } ;


 int set_us_coefficients (struct vpe_ctx*) ;

__attribute__((used)) static void set_src_registers(struct vpe_ctx *ctx)
{
 set_us_coefficients(ctx);
}
