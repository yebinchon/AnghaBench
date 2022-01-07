
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nps_enet_priv {scalar_t__ regs_base; } ;
struct net_device {int dummy; } ;
typedef int s32 ;


 int IS_ALIGNED (unsigned long,int) ;
 scalar_t__ NPS_ENET_REG_RX_BUF ;
 int ioread32_rep (scalar_t__,int*,int) ;
 int memcpy (int *,int*,int) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_get (struct nps_enet_priv*,scalar_t__) ;
 int put_unaligned_be32 (int,int*) ;

__attribute__((used)) static void nps_enet_read_rx_fifo(struct net_device *ndev,
      unsigned char *dst, u32 length)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 s32 i, last = length & (sizeof(u32) - 1);
 u32 *reg = (u32 *)dst, len = length / sizeof(u32);
 bool dst_is_aligned = IS_ALIGNED((unsigned long)dst, sizeof(u32));


 if (dst_is_aligned) {
  ioread32_rep(priv->regs_base + NPS_ENET_REG_RX_BUF, reg, len);
  reg += len;
 } else {
  for (i = 0; i < len; i++, reg++) {
   u32 buf = nps_enet_reg_get(priv, NPS_ENET_REG_RX_BUF);

   put_unaligned_be32(buf, reg);
  }
 }

 if (last) {
  u32 buf;

  ioread32_rep(priv->regs_base + NPS_ENET_REG_RX_BUF, &buf, 1);
  memcpy((u8 *)reg, &buf, last);
 }
}
