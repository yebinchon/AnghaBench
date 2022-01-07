
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_q_cnt; int tx_q_cnt; } ;
struct xlgmac_pdata {TYPE_1__ hw_feat; } ;


 int MTL_Q_IER ;
 int MTL_Q_ISR ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 unsigned int max (int ,int ) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void xlgmac_enable_mtl_interrupts(struct xlgmac_pdata *pdata)
{
 unsigned int q_count, i;
 unsigned int mtl_q_isr;

 q_count = max(pdata->hw_feat.tx_q_cnt, pdata->hw_feat.rx_q_cnt);
 for (i = 0; i < q_count; i++) {

  mtl_q_isr = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_ISR));
  writel(mtl_q_isr, XLGMAC_MTL_REG(pdata, i, MTL_Q_ISR));


  writel(0, XLGMAC_MTL_REG(pdata, i, MTL_Q_IER));
 }
}
