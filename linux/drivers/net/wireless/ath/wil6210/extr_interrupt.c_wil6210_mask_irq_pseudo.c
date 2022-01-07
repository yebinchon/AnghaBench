
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int status; } ;


 int RGF_DMA_PSEUDO_CAUSE_MASK_SW ;
 int WIL6210_IRQ_DISABLE ;
 int clear_bit (int ,int ) ;
 int wil_dbg_irq (struct wil6210_priv*,char*) ;
 int wil_status_irqen ;
 int wil_w (struct wil6210_priv*,int ,int ) ;

__attribute__((used)) static void wil6210_mask_irq_pseudo(struct wil6210_priv *wil)
{
 wil_dbg_irq(wil, "mask_irq_pseudo\n");

 wil_w(wil, RGF_DMA_PSEUDO_CAUSE_MASK_SW, WIL6210_IRQ_DISABLE);

 clear_bit(wil_status_irqen, wil->status);
}
