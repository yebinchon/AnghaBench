
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int dummy; } ;


 int DM1105_CR ;
 int DM1105_INTMAK ;
 int INTMAK_IRM ;
 int dm_writeb (int ,int ) ;

__attribute__((used)) static void dm1105_disable_irqs(struct dm1105_dev *dev)
{
 dm_writeb(DM1105_INTMAK, INTMAK_IRM);
 dm_writeb(DM1105_CR, 0);
}
