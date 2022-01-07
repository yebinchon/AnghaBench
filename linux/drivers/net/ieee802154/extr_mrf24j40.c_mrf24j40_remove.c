
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct mrf24j40 {int hw; } ;


 int dev_dbg (int ,char*) ;
 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 int printdev (struct mrf24j40*) ;
 struct mrf24j40* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int mrf24j40_remove(struct spi_device *spi)
{
 struct mrf24j40 *devrec = spi_get_drvdata(spi);

 dev_dbg(printdev(devrec), "remove\n");

 ieee802154_unregister_hw(devrec->hw);
 ieee802154_free_hw(devrec->hw);



 return 0;
}
