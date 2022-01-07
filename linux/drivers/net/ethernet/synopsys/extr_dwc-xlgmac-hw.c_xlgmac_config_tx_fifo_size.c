
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_fifo_size; } ;
struct xlgmac_pdata {unsigned int tx_q_count; int netdev; TYPE_1__ hw_feat; } ;


 int MTL_Q_TQOMR ;
 int MTL_Q_TQOMR_TQS_LEN ;
 int MTL_Q_TQOMR_TQS_POS ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,unsigned int) ;
 int drv ;
 int netif_info (struct xlgmac_pdata*,int ,int ,char*,unsigned int,unsigned int) ;
 int readl (int ) ;
 int writel (int ,int ) ;
 unsigned int xlgmac_calculate_per_queue_fifo (int ,unsigned int) ;

__attribute__((used)) static void xlgmac_config_tx_fifo_size(struct xlgmac_pdata *pdata)
{
 unsigned int fifo_size;
 unsigned int i;
 u32 regval;

 fifo_size = xlgmac_calculate_per_queue_fifo(
    pdata->hw_feat.tx_fifo_size,
    pdata->tx_q_count);

 for (i = 0; i < pdata->tx_q_count; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_TQOMR_TQS_POS,
          MTL_Q_TQOMR_TQS_LEN, fifo_size);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
 }

 netif_info(pdata, drv, pdata->netdev,
     "%d Tx hardware queues, %d byte fifo per queue\n",
     pdata->tx_q_count, ((fifo_size + 1) * 256));
}
