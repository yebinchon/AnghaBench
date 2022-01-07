
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mal_instance {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MAL_ESR ;
 int MAL_ESR_CIDT ;
 int MAL_ESR_DE ;
 int MAL_ESR_EVB ;
 int get_mal_dcrn (struct mal_instance*,int ) ;
 int mal_rxde (int,void*) ;
 int mal_serr (int,void*) ;
 int mal_txde (int,void*) ;

__attribute__((used)) static irqreturn_t mal_int(int irq, void *dev_instance)
{
 struct mal_instance *mal = dev_instance;
 u32 esr = get_mal_dcrn(mal, MAL_ESR);

 if (esr & MAL_ESR_EVB) {

  if (esr & MAL_ESR_DE) {
   if (esr & MAL_ESR_CIDT)
    return mal_rxde(irq, dev_instance);
   else
    return mal_txde(irq, dev_instance);
  } else {
   return mal_serr(irq, dev_instance);
  }
 }
 return IRQ_HANDLED;
}
