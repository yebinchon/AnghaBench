
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {int dummy; } ;


 int INTERRUPT_ENABLE ;
 int MSI1_ENABLE ;
 int ddbwritel (struct ddb*,int ,int ) ;

__attribute__((used)) static void ddb_irq_disable(struct ddb *dev)
{
 ddbwritel(dev, 0, INTERRUPT_ENABLE);
 ddbwritel(dev, 0, MSI1_ENABLE);
}
