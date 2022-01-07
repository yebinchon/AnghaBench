
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_priv {int hw; } ;


 int ALX_ISR ;
 scalar_t__ ALX_ISR_DIS ;
 int alx_configure (struct alx_priv*) ;
 int alx_irq_enable (struct alx_priv*) ;
 int alx_reinit_rings (struct alx_priv*) ;
 int alx_schedule_link_check (struct alx_priv*) ;
 int alx_write_mem32 (int *,int ,int ) ;

__attribute__((used)) static void alx_activate(struct alx_priv *alx)
{

 alx_reinit_rings(alx);
 alx_configure(alx);


 alx_write_mem32(&alx->hw, ALX_ISR, ~(u32)ALX_ISR_DIS);

 alx_irq_enable(alx);

 alx_schedule_link_check(alx);
}
