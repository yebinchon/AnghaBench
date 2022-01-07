
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int hw; } ;
typedef int irqreturn_t ;


 int ALX_ISR ;
 int alx_intr_handle (struct alx_priv*,int ) ;
 int alx_read_mem32 (int *,int ) ;

__attribute__((used)) static irqreturn_t alx_intr_msi(int irq, void *data)
{
 struct alx_priv *alx = data;

 return alx_intr_handle(alx, alx_read_mem32(&alx->hw, ALX_ISR));
}
