
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_ctx {int rotation; scalar_t__ vflip; scalar_t__ hflip; } ;


 int FIMC_REG_MSCTRL_FLIP_180 ;
 int FIMC_REG_MSCTRL_FLIP_NORMAL ;
 int FIMC_REG_MSCTRL_FLIP_X_MIRROR ;
 int FIMC_REG_MSCTRL_FLIP_Y_MIRROR ;

__attribute__((used)) static u32 fimc_hw_get_in_flip(struct fimc_ctx *ctx)
{
 u32 flip = FIMC_REG_MSCTRL_FLIP_NORMAL;

 if (ctx->hflip)
  flip = FIMC_REG_MSCTRL_FLIP_Y_MIRROR;
 if (ctx->vflip)
  flip = FIMC_REG_MSCTRL_FLIP_X_MIRROR;

 if (ctx->rotation <= 90)
  return flip;

 return (flip ^ FIMC_REG_MSCTRL_FLIP_180) & FIMC_REG_MSCTRL_FLIP_180;
}
