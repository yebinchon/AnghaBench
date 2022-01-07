
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_regs {int rdp; int rap; } ;
struct lance_private {int busmaster_regval; struct lance_init_block* lance_init_block; struct lance_regs* ll; } ;
struct lance_init_block {int dummy; } ;


 int LANCE_ADDR (struct lance_init_block volatile*) ;
 int LE_CSR0 ;
 int LE_CSR1 ;
 int LE_CSR2 ;
 int LE_CSR3 ;

__attribute__((used)) static void load_csrs(struct lance_private *lp)
{
 volatile struct lance_regs *ll = lp->ll;
 volatile struct lance_init_block *aib = lp->lance_init_block;
 int leptr = LANCE_ADDR(aib);

 ll->rap = LE_CSR1;
 ll->rdp = (leptr & 0xFFFF);
 ll->rap = LE_CSR2;
 ll->rdp = leptr >> 16;
 ll->rap = LE_CSR3;
 ll->rdp = lp->busmaster_regval;


 ll->rap = LE_CSR0;
}
