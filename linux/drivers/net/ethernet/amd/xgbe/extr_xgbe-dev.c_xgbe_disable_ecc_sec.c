
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_ecc_sec { ____Placeholder_xgbe_ecc_sec } xgbe_ecc_sec ;


 int DESC_SEC ;
 int RX_SEC ;
 int TX_SEC ;



 int XP_ECC_IER ;
 unsigned int XP_IOREAD (struct xgbe_prv_data*,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XP_SET_BITS (unsigned int,int ,int ,int ) ;

__attribute__((used)) static void xgbe_disable_ecc_sec(struct xgbe_prv_data *pdata,
     enum xgbe_ecc_sec sec)
{
 unsigned int ecc_ier;

 ecc_ier = XP_IOREAD(pdata, XP_ECC_IER);


 switch (sec) {
 case 128:
 XP_SET_BITS(ecc_ier, XP_ECC_IER, TX_SEC, 0);
  break;
 case 129:
 XP_SET_BITS(ecc_ier, XP_ECC_IER, RX_SEC, 0);
  break;
 case 130:
 XP_SET_BITS(ecc_ier, XP_ECC_IER, DESC_SEC, 0);
  break;
 }

 XP_IOWRITE(pdata, XP_ECC_IER, ecc_ier);
}
