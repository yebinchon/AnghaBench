
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_regs {int rap; int rdp; } ;
struct lance_private {struct lance_regs* ll; } ;


 int LE_C0_ERR ;
 int LE_C0_IDON ;
 int LE_C0_INEA ;
 int LE_C0_INIT ;
 int LE_C0_STRT ;
 int LE_CSR0 ;
 int printk (char*,int,int) ;
 int udelay (int) ;
 int writereg (int*,int) ;

__attribute__((used)) static int init_restart_lance(struct lance_private *lp)
{
 volatile struct lance_regs *ll = lp->ll;
 int i;

 writereg(&ll->rap, LE_CSR0);
 writereg(&ll->rdp, LE_C0_INIT);


 for (i = 0; (i < 100) && !(ll->rdp & LE_C0_IDON); i++) {
  udelay(10);
 }
 if ((i == 100) || (ll->rdp & LE_C0_ERR)) {
  printk("LANCE unopened after %d ticks, csr0=%4.4x.\n",
         i, ll->rdp);
  return -1;
 }
 if ((ll->rdp & LE_C0_ERR)) {
  printk("LANCE unopened after %d ticks, csr0=%4.4x.\n",
         i, ll->rdp);
  return -1;
 }
 writereg(&ll->rdp, LE_C0_IDON);
 writereg(&ll->rdp, LE_C0_STRT);
 writereg(&ll->rdp, LE_C0_INEA);

 return 0;
}
