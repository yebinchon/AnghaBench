
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int n_msi; } ;


 int free_irq (int,struct wil6210_priv*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_mask_irq (struct wil6210_priv*) ;

void wil6210_fini_irq(struct wil6210_priv *wil, int irq)
{
 wil_dbg_misc(wil, "fini_irq:\n");

 wil_mask_irq(wil);
 free_irq(irq, wil);
 if (wil->n_msi == 3) {
  free_irq(irq + 1, wil);
  free_irq(irq + 2, wil);
 }
}
