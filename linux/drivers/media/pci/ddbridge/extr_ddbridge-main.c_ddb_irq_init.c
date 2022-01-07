
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {int msi; int pdev; } ;


 int INTERRUPT_ENABLE ;
 int IRQF_SHARED ;
 int MSI1_ENABLE ;
 int MSI2_ENABLE ;
 int MSI3_ENABLE ;
 int MSI4_ENABLE ;
 int MSI5_ENABLE ;
 int MSI6_ENABLE ;
 int MSI7_ENABLE ;
 int ddb_irq_handler ;
 int ddb_irq_handler0 ;
 int ddb_irq_handler1 ;
 int ddb_irq_msi (struct ddb*,int) ;
 int ddbwritel (struct ddb*,int,int ) ;
 int free_irq (int ,struct ddb*) ;
 int pci_irq_vector (int ,int) ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int ddb_irq_init(struct ddb *dev)
{
 int stat;
 int irq_flag = IRQF_SHARED;

 ddbwritel(dev, 0x00000000, INTERRUPT_ENABLE);
 ddbwritel(dev, 0x00000000, MSI1_ENABLE);
 ddbwritel(dev, 0x00000000, MSI2_ENABLE);
 ddbwritel(dev, 0x00000000, MSI3_ENABLE);
 ddbwritel(dev, 0x00000000, MSI4_ENABLE);
 ddbwritel(dev, 0x00000000, MSI5_ENABLE);
 ddbwritel(dev, 0x00000000, MSI6_ENABLE);
 ddbwritel(dev, 0x00000000, MSI7_ENABLE);
 {
  stat = request_irq(pci_irq_vector(dev->pdev, 0),
       ddb_irq_handler, irq_flag, "ddbridge",
       (void *)dev);
  if (stat < 0)
   return stat;
 }
 if (dev->msi == 2) {
  ddbwritel(dev, 0x0fffff00, INTERRUPT_ENABLE);
  ddbwritel(dev, 0x0000000f, MSI1_ENABLE);
 } else {
  ddbwritel(dev, 0x0fffff0f, INTERRUPT_ENABLE);
  ddbwritel(dev, 0x00000000, MSI1_ENABLE);
 }
 return stat;
}
