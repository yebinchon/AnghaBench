
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* vdata; } ;
struct TYPE_2__ {int ecc_support; } ;


 int DESC_DED ;
 int DESC_SEC ;
 int RX_DED ;
 int RX_SEC ;
 int TX_DED ;
 int TX_SEC ;
 int XP_ECC_IER ;
 int XP_ECC_ISR ;
 unsigned int XP_IOREAD (struct xgbe_prv_data*,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XP_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_enable_ecc_interrupts(struct xgbe_prv_data *pdata)
{
 unsigned int ecc_isr, ecc_ier = 0;

 if (!pdata->vdata->ecc_support)
  return;


 ecc_isr = XP_IOREAD(pdata, XP_ECC_ISR);
 XP_IOWRITE(pdata, XP_ECC_ISR, ecc_isr);


 XP_SET_BITS(ecc_ier, XP_ECC_IER, TX_DED, 1);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, TX_SEC, 1);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, RX_DED, 1);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, RX_SEC, 1);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, DESC_DED, 1);
 XP_SET_BITS(ecc_ier, XP_ECC_IER, DESC_SEC, 1);

 XP_IOWRITE(pdata, XP_ECC_IER, ecc_ier);
}
