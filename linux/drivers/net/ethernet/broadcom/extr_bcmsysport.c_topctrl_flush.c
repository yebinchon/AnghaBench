
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sysport_priv {int dummy; } ;


 int RX_FLUSH ;
 int RX_FLUSH_CNTL ;
 int TX_FLUSH ;
 int TX_FLUSH_CNTL ;
 int mdelay (int) ;
 int topctrl_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static void topctrl_flush(struct bcm_sysport_priv *priv)
{
 topctrl_writel(priv, RX_FLUSH, RX_FLUSH_CNTL);
 topctrl_writel(priv, TX_FLUSH, TX_FLUSH_CNTL);
 mdelay(1);
 topctrl_writel(priv, 0, RX_FLUSH_CNTL);
 topctrl_writel(priv, 0, TX_FLUSH_CNTL);
}
