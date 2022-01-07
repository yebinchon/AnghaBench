
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int irq_name; scalar_t__ virq; } ;
struct ocxl_link {struct spa* spa; } ;


 int free_irq (scalar_t__,struct ocxl_link*) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (int ) ;
 int unmap_irq_registers (struct spa*) ;

__attribute__((used)) static void release_xsl_irq(struct ocxl_link *link)
{
 struct spa *spa = link->spa;

 if (spa->virq) {
  free_irq(spa->virq, link);
  irq_dispose_mapping(spa->virq);
 }
 kfree(spa->irq_name);
 unmap_irq_registers(spa);
}
