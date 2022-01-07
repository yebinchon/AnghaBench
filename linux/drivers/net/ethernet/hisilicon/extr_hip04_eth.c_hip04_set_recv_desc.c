
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hip04_priv {int port; int map; } ;
typedef int dma_addr_t ;


 int PPE_BUF_SIZE_SHIFT ;
 scalar_t__ PPE_CFG_RX_ADDR ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static void hip04_set_recv_desc(struct hip04_priv *priv, dma_addr_t phys)
{
 u32 val;

 val = phys >> PPE_BUF_SIZE_SHIFT;
 regmap_write(priv->map, priv->port * 4 + PPE_CFG_RX_ADDR, val);
}
