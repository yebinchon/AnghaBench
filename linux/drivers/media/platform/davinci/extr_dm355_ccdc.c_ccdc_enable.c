
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CCDC_SYNCEN_VDHDEN_MASK ;
 int SYNCEN ;
 unsigned int regr (int ) ;
 int regw (unsigned int,int ) ;

__attribute__((used)) static void ccdc_enable(int en)
{
 unsigned int temp;
 temp = regr(SYNCEN);
 temp &= (~CCDC_SYNCEN_VDHDEN_MASK);
 temp |= (en & CCDC_SYNCEN_VDHDEN_MASK);
 regw(temp, SYNCEN);
}
