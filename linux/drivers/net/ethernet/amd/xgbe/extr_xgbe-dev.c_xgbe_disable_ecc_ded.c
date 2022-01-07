
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int DESC_DED ;
 int RX_DED ;
 int TX_DED ;
 int XP_ECC_IER ;
 unsigned int XP_IOREAD (struct xgbe_prv_data*,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XP_SET_BITS (unsigned int,int ,int ,int ) ;

__attribute__((used)) static void xgbe_disable_ecc_ded(struct xgbe_prv_data *pdata)
{
 unsigned int ecc_ier;

 ecc_ier = XP_IOREAD(pdata, XP_ECC_IER);


 XP_SET_BITS(ecc_ier, XP_ECC_IER, TX_DED, 0);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, RX_DED, 0);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, DESC_DED, 0);

 XP_IOWRITE(pdata, XP_ECC_IER, ecc_ier);
}
