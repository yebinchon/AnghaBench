
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nixge_priv {scalar_t__ dma_regs; } ;
typedef scalar_t__ off_t ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 nixge_dma_read_reg(const struct nixge_priv *priv, off_t offset)
{
 return readl(priv->dma_regs + offset);
}
