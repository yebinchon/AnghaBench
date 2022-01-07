
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct alx_priv {TYPE_1__ hw; } ;


 int alx_alloc_napis (struct alx_priv*) ;
 int alx_alloc_rings (struct alx_priv*) ;
 int alx_free_napis (struct alx_priv*) ;
 int alx_free_rings (struct alx_priv*) ;
 int alx_init_intr (struct alx_priv*) ;
 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static int alx_realloc_resources(struct alx_priv *alx)
{
 int err;

 alx_free_rings(alx);
 alx_free_napis(alx);
 pci_free_irq_vectors(alx->hw.pdev);

 err = alx_init_intr(alx);
 if (err)
  return err;

 err = alx_alloc_napis(alx);
 if (err)
  return err;

 err = alx_alloc_rings(alx);
 if (err)
  return err;

 return 0;
}
