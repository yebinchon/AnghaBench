
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_regs {int rdp; int rap; } ;
struct lance_private {struct lance_regs* ll; } ;


 int EIO ;
 int LE_C0_ERR ;
 int LE_C0_IDON ;
 int LE_C0_INEA ;
 int LE_C0_INIT ;
 int LE_C0_STRT ;
 int LE_CSR0 ;
 int barrier () ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int init_restart_lance(struct lance_private *lp)
{
 volatile struct lance_regs *ll = lp->ll;
 int i;

 ll->rap = LE_CSR0;
 ll->rdp = LE_C0_INIT;


 for (i = 0; (i < 100) && !(ll->rdp & (LE_C0_ERR | LE_C0_IDON)); i++)
  barrier();
 if ((i == 100) || (ll->rdp & LE_C0_ERR)) {
  pr_err("unopened after %d ticks, csr0=%04x\n", i, ll->rdp);
  return -EIO;
 }


 ll->rdp = LE_C0_IDON;
 ll->rdp = LE_C0_INEA | LE_C0_STRT;

 return 0;
}
