
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct TYPE_5__ {int paddr; } ;
struct sun4i_csi {int ** current_buf; TYPE_3__ fmt; scalar_t__ regs; int dev; TYPE_2__ scratch; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ sizeimage; } ;


 scalar_t__ CSI_BUF_ADDR_REG (unsigned int,unsigned int) ;
 int dev_dbg (int ,char*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun4i_csi_setup_scratch_buffer(struct sun4i_csi *csi,
       unsigned int slot)
{
 dma_addr_t addr = csi->scratch.paddr;
 unsigned int plane;

 dev_dbg(csi->dev,
  "No more available buffer, using the scratch buffer\n");

 for (plane = 0; plane < csi->fmt.num_planes; plane++) {
  writel(addr, csi->regs + CSI_BUF_ADDR_REG(plane, slot));
  addr += csi->fmt.plane_fmt[plane].sizeimage;
 }

 csi->current_buf[slot] = ((void*)0);
 return 0;
}
