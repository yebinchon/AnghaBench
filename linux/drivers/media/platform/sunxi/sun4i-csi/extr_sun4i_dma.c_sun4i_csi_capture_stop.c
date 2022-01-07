
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_csi {scalar_t__ regs; } ;


 scalar_t__ CSI_CPT_CTRL_REG ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_csi_capture_stop(struct sun4i_csi *csi)
{
 writel(0, csi->regs + CSI_CPT_CTRL_REG);
}
