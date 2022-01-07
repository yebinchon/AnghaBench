
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int RATECHANGE ;
 int SIR1_SPEED ;
 int XSIR1_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_phy_start_ratechange(struct xgbe_prv_data *pdata)
{

 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, RATECHANGE, 1);
}
