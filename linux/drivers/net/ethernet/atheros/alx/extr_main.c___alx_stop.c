
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int dummy; } ;


 int alx_free_irq (struct alx_priv*) ;
 int alx_free_napis (struct alx_priv*) ;
 int alx_free_rings (struct alx_priv*) ;
 int alx_halt (struct alx_priv*) ;

__attribute__((used)) static void __alx_stop(struct alx_priv *alx)
{
 alx_halt(alx);
 alx_free_irq(alx);
 alx_free_rings(alx);
 alx_free_napis(alx);
}
