
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_ALAW ;
 int VPFE_CCDC_GAMMA_BITS_11_2 ;
 int VPFE_CULLING ;
 int VPFE_NO_CULLING ;
 int vpfe_pcr_enable (struct vpfe_ccdc*,int ) ;
 int vpfe_reg_write (struct vpfe_ccdc*,int ,int) ;

__attribute__((used)) static void vpfe_ccdc_restore_defaults(struct vpfe_ccdc *ccdc)
{
 int i;


 vpfe_pcr_enable(ccdc, 0);


 for (i = 4; i <= 0x94; i += 4)
  vpfe_reg_write(ccdc, 0, i);

 vpfe_reg_write(ccdc, VPFE_NO_CULLING, VPFE_CULLING);
 vpfe_reg_write(ccdc, VPFE_CCDC_GAMMA_BITS_11_2, VPFE_ALAW);
}
