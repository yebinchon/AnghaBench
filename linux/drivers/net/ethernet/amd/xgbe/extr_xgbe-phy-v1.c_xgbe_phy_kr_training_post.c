
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int RESET ;
 int SIR0_KR_RT_1 ;
 int XSIR0_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static void xgbe_phy_kr_training_post(struct xgbe_prv_data *pdata)
{
  XSIR0_IOWRITE_BITS(pdata, SIR0_KR_RT_1, RESET, 0);
}
