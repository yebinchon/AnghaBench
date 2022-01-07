
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ccdc_csc {TYPE_1__* coeff; int enable; } ;
struct TYPE_2__ {int integer; int decimal; } ;


 int CCDC_CSCM_MSB_SHIFT ;
 int CCDC_CSC_COEFF_TABLE_SIZE ;
 int CCDC_CSC_COEF_DECIMAL_MASK ;
 int CCDC_CSC_COEF_INTEG_MASK ;
 int CCDC_CSC_COEF_INTEG_SHIFT ;
 int CCDC_CSC_DEC_MAX ;
 int CCDC_CSC_ENABLE ;
 scalar_t__ CSCCTL ;
 scalar_t__ CSCM0 ;
 int regw (int,scalar_t__) ;

__attribute__((used)) static void ccdc_config_csc(struct ccdc_csc *csc)
{
 u32 val1 = 0, val2;
 int i;

 if (!csc->enable)
  return;


 regw(CCDC_CSC_ENABLE, CSCCTL);


 for (i = 0; i < CCDC_CSC_COEFF_TABLE_SIZE; i++) {
  if ((i % 2) == 0) {

   val1 = (csc->coeff[i].integer &
    CCDC_CSC_COEF_INTEG_MASK)
    << CCDC_CSC_COEF_INTEG_SHIFT;




   val1 |= (((csc->coeff[i].decimal &
    CCDC_CSC_COEF_DECIMAL_MASK) *
    CCDC_CSC_DEC_MAX) / 100);
  } else {


   val2 = (csc->coeff[i].integer &
    CCDC_CSC_COEF_INTEG_MASK)
    << CCDC_CSC_COEF_INTEG_SHIFT;
   val2 |= (((csc->coeff[i].decimal &
     CCDC_CSC_COEF_DECIMAL_MASK) *
     CCDC_CSC_DEC_MAX) / 100);
   val2 <<= CCDC_CSCM_MSB_SHIFT;
   val2 |= val1;
   regw(val2, (CSCM0 + ((i - 1) << 1)));
  }
 }
}
