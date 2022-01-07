
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLAMPCFG ;
 int CSCCTL ;
 int DFCCTL ;
 int LINCFG0 ;
 int regw (int ,int ) ;

__attribute__((used)) static void isif_disable_all_modules(void)
{

 regw(0, CLAMPCFG);

 regw(0, DFCCTL);

 regw(0, CSCCTL);

 regw(0, LINCFG0);

}
