
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xlgmac_pdata {unsigned int tx_q_count; } ;


 int EBUSY ;
 int MTL_Q_TQOMR ;
 int MTL_Q_TQOMR_FTQ_LEN ;
 int MTL_Q_TQOMR_FTQ_POS ;
 scalar_t__ XLGMAC_GET_REG_BITS (scalar_t__,int ,int ) ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 scalar_t__ XLGMAC_SET_REG_BITS (scalar_t__,int ,int ,int) ;
 scalar_t__ readl (int ) ;
 int usleep_range (int,int) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int xlgmac_flush_tx_queues(struct xlgmac_pdata *pdata)
{
 unsigned int i, count;
 u32 regval;

 for (i = 0; i < pdata->tx_q_count; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_TQOMR_FTQ_POS,
          MTL_Q_TQOMR_FTQ_LEN, 1);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
 }


 for (i = 0; i < pdata->tx_q_count; i++) {
  count = 2000;
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
  regval = XLGMAC_GET_REG_BITS(regval, MTL_Q_TQOMR_FTQ_POS,
          MTL_Q_TQOMR_FTQ_LEN);
  while (--count && regval)
   usleep_range(500, 600);

  if (!count)
   return -EBUSY;
 }

 return 0;
}
