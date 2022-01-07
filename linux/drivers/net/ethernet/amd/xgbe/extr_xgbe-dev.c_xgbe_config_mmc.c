
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int CR ;
 int MMC_CR ;
 int ROR ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_mmc(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MMC_CR, ROR, 1);


 XGMAC_IOWRITE_BITS(pdata, MMC_CR, CR, 1);
}
