
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_private {int dummy; } ;


 int LE_C0_ERR ;
 int LE_C0_IDON ;
 int LE_C0_INEA ;
 int LE_C0_INIT ;
 int LE_C0_STRT ;
 int LE_CSR0 ;
 int READRDP (struct lance_private*) ;
 int WRITERAP (struct lance_private*,int ) ;
 int WRITERDP (struct lance_private*,int) ;
 int barrier () ;
 int printk (char*,int,int) ;

__attribute__((used)) static int init_restart_lance(struct lance_private *lp)
{
 int i;

 WRITERAP(lp, LE_CSR0);
 WRITERDP(lp, LE_C0_INIT);




 for (i = 0; (i < 100) && !(READRDP(lp) & (LE_C0_ERR | LE_C0_IDON)); i++)
  barrier();
 if ((i == 100) || (READRDP(lp) & LE_C0_ERR)) {
  printk("LANCE unopened after %d ticks, csr0=%4.4x.\n", i, READRDP(lp));
  return -1;
 }


 WRITERDP(lp, LE_C0_IDON);
 WRITERDP(lp, LE_C0_INEA | LE_C0_STRT);

 return 0;
}
