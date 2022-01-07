
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_pf {int hw; } ;


 int ETIMEDOUT ;
 int I40E_QRX_ENA (int) ;
 int I40E_QRX_ENA_QENA_STAT_MASK ;
 int I40E_QUEUE_WAIT_RETRY_LIMIT ;
 int rd32 (int *,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i40e_pf_rxq_wait(struct i40e_pf *pf, int pf_q, bool enable)
{
 int i;
 u32 rx_reg;

 for (i = 0; i < I40E_QUEUE_WAIT_RETRY_LIMIT; i++) {
  rx_reg = rd32(&pf->hw, I40E_QRX_ENA(pf_q));
  if (enable == !!(rx_reg & I40E_QRX_ENA_QENA_STAT_MASK))
   break;

  usleep_range(10, 20);
 }
 if (i >= I40E_QUEUE_WAIT_RETRY_LIMIT)
  return -ETIMEDOUT;

 return 0;
}
