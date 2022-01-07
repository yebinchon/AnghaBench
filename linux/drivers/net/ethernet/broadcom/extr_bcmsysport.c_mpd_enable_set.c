
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {scalar_t__ is_lite; } ;


 int MPD_EN ;
 int RBUF_ACPI_EN ;
 int RBUF_ACPI_EN_LITE ;
 int RBUF_CONTROL ;
 int UMAC_MPD_CTRL ;
 int rbuf_readl (struct bcm_sysport_priv*,int ) ;
 int rbuf_writel (struct bcm_sysport_priv*,int ,int ) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static void mpd_enable_set(struct bcm_sysport_priv *priv, bool enable)
{
 u32 reg, bit;

 reg = umac_readl(priv, UMAC_MPD_CTRL);
 if (enable)
  reg |= MPD_EN;
 else
  reg &= ~MPD_EN;
 umac_writel(priv, reg, UMAC_MPD_CTRL);

 if (priv->is_lite)
  bit = RBUF_ACPI_EN_LITE;
 else
  bit = RBUF_ACPI_EN;

 reg = rbuf_readl(priv, RBUF_CONTROL);
 if (enable)
  reg |= bit;
 else
  reg &= ~bit;
 rbuf_writel(priv, reg, RBUF_CONTROL);
}
