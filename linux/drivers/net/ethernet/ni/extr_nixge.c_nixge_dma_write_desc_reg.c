
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nixge_priv {scalar_t__ dma_regs; } ;
typedef scalar_t__ off_t ;
typedef int dma_addr_t ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void nixge_dma_write_desc_reg(struct nixge_priv *priv, off_t offset,
         dma_addr_t addr)
{
 writel(lower_32_bits(addr), priv->dma_regs + offset);



}
