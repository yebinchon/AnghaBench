
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ispif_device {scalar_t__ base_clk_mux; } ;
typedef enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;


 scalar_t__ CSI_PIX_CLK_MUX_SEL ;
 scalar_t__ CSI_RDI_CLK_MUX_SEL ;





 int mb () ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void ispif_select_clk_mux(struct ispif_device *ispif,
     enum ispif_intf intf, u8 csid,
     u8 vfe, u8 enable)
{
 u32 val;

 switch (intf) {
 case 132:
  val = readl_relaxed(ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
  val &= ~(0xf << (vfe * 8));
  if (enable)
   val |= (csid << (vfe * 8));
  writel_relaxed(val, ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
  break;

 case 130:
  val = readl_relaxed(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  val &= ~(0xf << (vfe * 12));
  if (enable)
   val |= (csid << (vfe * 12));
  writel_relaxed(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  break;

 case 131:
  val = readl_relaxed(ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
  val &= ~(0xf << (4 + (vfe * 8)));
  if (enable)
   val |= (csid << (4 + (vfe * 8)));
  writel_relaxed(val, ispif->base_clk_mux + CSI_PIX_CLK_MUX_SEL);
  break;

 case 129:
  val = readl_relaxed(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  val &= ~(0xf << (4 + (vfe * 12)));
  if (enable)
   val |= (csid << (4 + (vfe * 12)));
  writel_relaxed(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  break;

 case 128:
  val = readl_relaxed(ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  val &= ~(0xf << (8 + (vfe * 12)));
  if (enable)
   val |= (csid << (8 + (vfe * 12)));
  writel_relaxed(val, ispif->base_clk_mux + CSI_RDI_CLK_MUX_SEL);
  break;
 }

 mb();
}
