
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_csi {scalar_t__ regs; } ;


 int CSI_BUF_CTRL_DBS ;
 scalar_t__ CSI_BUF_CTRL_REG ;
 int readl (scalar_t__) ;
 int sun4i_csi_buffer_fill_slot (struct sun4i_csi*,unsigned int) ;
 int sun4i_csi_buffer_mark_done (struct sun4i_csi*,unsigned int,unsigned int) ;

__attribute__((used)) static int sun4i_csi_buffer_flip(struct sun4i_csi *csi, unsigned int sequence)
{
 u32 reg = readl(csi->regs + CSI_BUF_CTRL_REG);
 unsigned int next;


 next = !(reg & CSI_BUF_CTRL_DBS);


 sun4i_csi_buffer_mark_done(csi, next, sequence);


 return sun4i_csi_buffer_fill_slot(csi, next);
}
