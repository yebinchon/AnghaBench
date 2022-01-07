
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int dummy; } ;


 int DM1105_INTMAK ;
 int DM1105_IRCTR ;
 int INTMAK_NONEMASK ;
 int dm1105_disable_irqs (struct dm1105_dev*) ;
 int dm1105_dma_unmap (struct dm1105_dev*) ;
 int dm_writeb (int ,int ) ;

__attribute__((used)) static void dm1105_hw_exit(struct dm1105_dev *dev)
{
 dm1105_disable_irqs(dev);


 dm_writeb(DM1105_IRCTR, 0);
 dm_writeb(DM1105_INTMAK, INTMAK_NONEMASK);

 dm1105_dma_unmap(dev);
}
