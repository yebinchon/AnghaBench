
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_ALAW ;
 int CCDC_CULLING ;
 int CCDC_GAMMA_BITS_11_2 ;
 int CCDC_NO_CULLING ;
 int ccdc_enable (int ) ;
 int regw (int ,int) ;

__attribute__((used)) static void ccdc_restore_defaults(void)
{
 int i;


 ccdc_enable(0);

 for (i = 4; i <= 0x94; i += 4)
  regw(0, i);
 regw(CCDC_NO_CULLING, CCDC_CULLING);
 regw(CCDC_GAMMA_BITS_11_2, CCDC_ALAW);
}
