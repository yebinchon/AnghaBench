
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gradient_sat; int bitblt; int render; } ;
union rga_mode_ctrl {scalar_t__ val; TYPE_1__ data; } ;
union rga_alpha_ctrl1 {scalar_t__ val; } ;
union rga_alpha_ctrl0 {scalar_t__ val; } ;
typedef scalar_t__ u32 ;
struct rockchip_rga {scalar_t__* cmdbuf_virt; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;


 int RGA_ALPHA_CTRL0 ;
 int RGA_ALPHA_CTRL1 ;
 int RGA_MODE_BASE_REG ;
 int RGA_MODE_BITBLT_MODE_SRC_TO_DST ;
 int RGA_MODE_CTRL ;
 int RGA_MODE_RENDER_BITBLT ;

__attribute__((used)) static void rga_cmd_set_mode(struct rga_ctx *ctx)
{
 struct rockchip_rga *rga = ctx->rga;
 u32 *dest = rga->cmdbuf_virt;
 union rga_mode_ctrl mode;
 union rga_alpha_ctrl0 alpha_ctrl0;
 union rga_alpha_ctrl1 alpha_ctrl1;

 mode.val = 0;
 alpha_ctrl0.val = 0;
 alpha_ctrl1.val = 0;

 mode.data.gradient_sat = 1;
 mode.data.render = RGA_MODE_RENDER_BITBLT;
 mode.data.bitblt = RGA_MODE_BITBLT_MODE_SRC_TO_DST;


 dest[(RGA_ALPHA_CTRL0 - RGA_MODE_BASE_REG) >> 2] = alpha_ctrl0.val;
 dest[(RGA_ALPHA_CTRL1 - RGA_MODE_BASE_REG) >> 2] = alpha_ctrl1.val;

 dest[(RGA_MODE_CTRL - RGA_MODE_BASE_REG) >> 2] = mode.val;
}
