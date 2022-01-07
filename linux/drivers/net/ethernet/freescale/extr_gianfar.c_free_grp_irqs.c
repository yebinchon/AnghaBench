
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_priv_grp {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int ER ;
 int RX ;
 int TX ;
 int free_irq (int ,struct gfar_priv_grp*) ;
 TYPE_1__* gfar_irq (struct gfar_priv_grp*,int ) ;

__attribute__((used)) static void free_grp_irqs(struct gfar_priv_grp *grp)
{
 free_irq(gfar_irq(grp, TX)->irq, grp);
 free_irq(gfar_irq(grp, RX)->irq, grp);
 free_irq(gfar_irq(grp, ER)->irq, grp);
}
