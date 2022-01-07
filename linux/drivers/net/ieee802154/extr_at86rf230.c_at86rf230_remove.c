
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct at86rf230_local {int hw; } ;


 int SR_IRQ_MASK ;
 int at86rf230_debugfs_remove () ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int ) ;
 int dev_dbg (int *,char*) ;
 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 struct at86rf230_local* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int at86rf230_remove(struct spi_device *spi)
{
 struct at86rf230_local *lp = spi_get_drvdata(spi);


 at86rf230_write_subreg(lp, SR_IRQ_MASK, 0);
 ieee802154_unregister_hw(lp->hw);
 ieee802154_free_hw(lp->hw);
 at86rf230_debugfs_remove();
 dev_dbg(&spi->dev, "unregistered at86rf230\n");

 return 0;
}
