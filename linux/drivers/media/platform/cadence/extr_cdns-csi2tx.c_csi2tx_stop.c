
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi2tx_priv {scalar_t__ base; } ;


 int CSI2TX_CONFIG_CFG_REQ ;
 scalar_t__ CSI2TX_CONFIG_REG ;
 int CSI2TX_CONFIG_SRST_REQ ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2tx_stop(struct csi2tx_priv *csi2tx)
{
 writel(CSI2TX_CONFIG_CFG_REQ | CSI2TX_CONFIG_SRST_REQ,
        csi2tx->base + CSI2TX_CONFIG_REG);
}
