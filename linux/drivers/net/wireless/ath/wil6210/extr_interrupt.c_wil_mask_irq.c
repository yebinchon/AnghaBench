
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;


 int wil6210_mask_irq_misc (struct wil6210_priv*,int) ;
 int wil6210_mask_irq_pseudo (struct wil6210_priv*) ;
 int wil6210_mask_irq_rx (struct wil6210_priv*) ;
 int wil6210_mask_irq_rx_edma (struct wil6210_priv*) ;
 int wil6210_mask_irq_tx (struct wil6210_priv*) ;
 int wil6210_mask_irq_tx_edma (struct wil6210_priv*) ;
 int wil_dbg_irq (struct wil6210_priv*,char*) ;

void wil_mask_irq(struct wil6210_priv *wil)
{
 wil_dbg_irq(wil, "mask_irq\n");

 wil6210_mask_irq_tx(wil);
 wil6210_mask_irq_tx_edma(wil);
 wil6210_mask_irq_rx(wil);
 wil6210_mask_irq_rx_edma(wil);
 wil6210_mask_irq_misc(wil, 1);
 wil6210_mask_irq_pseudo(wil);
}
