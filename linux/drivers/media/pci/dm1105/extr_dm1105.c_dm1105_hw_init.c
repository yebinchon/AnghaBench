
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int dummy; } ;


 int DM1105_DMA_BYTES ;
 int DM1105_DTALENTH ;
 int DM1105_HOST_CTR ;
 int DM1105_INTCNT ;
 int DM1105_IRCTR ;
 int DM1105_IRMODE ;
 int DM1105_IR_EN ;
 int DM1105_RLEN ;
 int DM1105_SYSTEMCODE ;
 int DM1105_SYS_CHK ;
 int DM1105_TSCTR ;
 int dm1105_disable_irqs (struct dm1105_dev*) ;
 int dm1105_dma_map (struct dm1105_dev*) ;
 int dm1105_set_dma_addr (struct dm1105_dev*) ;
 int dm_writeb (int ,int) ;
 int dm_writel (int ,int) ;
 int dm_writew (int ,int) ;

__attribute__((used)) static int dm1105_hw_init(struct dm1105_dev *dev)
{
 dm1105_disable_irqs(dev);

 dm_writeb(DM1105_HOST_CTR, 0);


 dm_writeb(DM1105_DTALENTH, 188);

 dm_writew(DM1105_TSCTR, 0xc10a);


 dm1105_dma_map(dev);
 dm1105_set_dma_addr(dev);

 dm_writel(DM1105_RLEN, 5 * DM1105_DMA_BYTES);
 dm_writeb(DM1105_INTCNT, 47);


 dm_writeb(DM1105_IRCTR, (DM1105_IR_EN | DM1105_SYS_CHK));
 dm_writeb(DM1105_IRMODE, 0);
 dm_writew(DM1105_SYSTEMCODE, 0);

 return 0;
}
