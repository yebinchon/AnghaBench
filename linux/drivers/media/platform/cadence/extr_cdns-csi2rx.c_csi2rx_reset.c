
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi2rx_priv {scalar_t__ base; } ;


 int CSI2RX_SOFT_RESET_FRONT ;
 int CSI2RX_SOFT_RESET_PROTOCOL ;
 scalar_t__ CSI2RX_SOFT_RESET_REG ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2rx_reset(struct csi2rx_priv *csi2rx)
{
 writel(CSI2RX_SOFT_RESET_PROTOCOL | CSI2RX_SOFT_RESET_FRONT,
        csi2rx->base + CSI2RX_SOFT_RESET_REG);

 udelay(10);

 writel(0, csi2rx->base + CSI2RX_SOFT_RESET_REG);
}
