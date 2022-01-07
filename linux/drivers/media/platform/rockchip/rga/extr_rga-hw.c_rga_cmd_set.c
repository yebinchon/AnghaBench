
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rga {int cmdbuf_phy; int dev; int dst_mmu_pages; int src_mmu_pages; int cmdbuf_virt; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;


 int DMA_BIDIRECTIONAL ;
 int PAGE_SIZE ;
 int RGA_CMDBUF_SIZE ;
 int RGA_CMD_BASE ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int rga_cmd_set_dst_addr (struct rga_ctx*,int ) ;
 int rga_cmd_set_mode (struct rga_ctx*) ;
 int rga_cmd_set_src1_addr (struct rga_ctx*,int ) ;
 int rga_cmd_set_src_addr (struct rga_ctx*,int ) ;
 int rga_cmd_set_trans_info (struct rga_ctx*) ;
 int rga_write (struct rockchip_rga*,int ,int ) ;

__attribute__((used)) static void rga_cmd_set(struct rga_ctx *ctx)
{
 struct rockchip_rga *rga = ctx->rga;

 memset(rga->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);

 rga_cmd_set_src_addr(ctx, rga->src_mmu_pages);




 rga_cmd_set_src1_addr(ctx, rga->dst_mmu_pages);

 rga_cmd_set_dst_addr(ctx, rga->dst_mmu_pages);
 rga_cmd_set_mode(ctx);

 rga_cmd_set_trans_info(ctx);

 rga_write(rga, RGA_CMD_BASE, rga->cmdbuf_phy);


 dma_sync_single_for_device(rga->dev, rga->cmdbuf_phy,
  PAGE_SIZE, DMA_BIDIRECTIONAL);
}
