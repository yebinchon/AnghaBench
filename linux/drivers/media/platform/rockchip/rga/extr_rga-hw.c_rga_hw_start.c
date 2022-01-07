
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rga {struct rga_ctx* curr; } ;
struct rga_ctx {int dummy; } ;


 int RGA_CMD_CTRL ;
 int RGA_INT ;
 int RGA_SYS_CTRL ;
 int rga_cmd_set (struct rga_ctx*) ;
 int rga_write (struct rockchip_rga*,int ,int) ;

void rga_hw_start(struct rockchip_rga *rga)
{
 struct rga_ctx *ctx = rga->curr;

 rga_cmd_set(ctx);

 rga_write(rga, RGA_SYS_CTRL, 0x00);

 rga_write(rga, RGA_SYS_CTRL, 0x22);

 rga_write(rga, RGA_INT, 0x600);

 rga_write(rga, RGA_CMD_CTRL, 0x1);
}
