
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hip04_priv {scalar_t__ base; } ;
typedef int dma_addr_t ;


 int PPE_BUF_SIZE_SHIFT ;
 scalar_t__ PPE_CFG_CPU_ADD_ADDR ;
 int PPE_TX_BUF_HOLD ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hip04_set_xmit_desc(struct hip04_priv *priv, dma_addr_t phys)
{
 u32 val;

 val = phys >> PPE_BUF_SIZE_SHIFT | PPE_TX_BUF_HOLD;
 writel(val, priv->base + PPE_CFG_CPU_ADD_ADDR);
}
