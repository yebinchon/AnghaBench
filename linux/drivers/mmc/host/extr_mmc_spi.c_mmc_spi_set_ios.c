
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mmc_spi_host {int power_mode; int powerup_msecs; TYPE_2__* spi; TYPE_1__* pdata; } ;
struct mmc_ios {int power_mode; scalar_t__ clock; int vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_5__ {int mode; scalar_t__ max_speed_hz; int dev; } ;
struct TYPE_4__ {int (* setpower ) (int *,int ) ;} ;



 int const MMC_POWER_ON ;

 int SPI_CPHA ;
 int SPI_CPOL ;
 int dev_dbg (int *,char*,...) ;
 int mmc_powerstring (int) ;
 struct mmc_spi_host* mmc_priv (struct mmc_host*) ;
 int mmc_spi_initsequence (struct mmc_spi_host*) ;
 int msleep (int) ;
 int spi_setup (TYPE_2__*) ;
 scalar_t__ spi_write (TYPE_2__*,int *,int) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void mmc_spi_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmc_spi_host *host = mmc_priv(mmc);

 if (host->power_mode != ios->power_mode) {
  int canpower;

  canpower = host->pdata && host->pdata->setpower;

  dev_dbg(&host->spi->dev, "mmc_spi: power %s (%d)%s\n",
    mmc_powerstring(ios->power_mode),
    ios->vdd,
    canpower ? ", can switch" : "");




  if (canpower) {
   switch (ios->power_mode) {
   case 129:
   case 128:
    host->pdata->setpower(&host->spi->dev,
      ios->vdd);
    if (ios->power_mode == 128)
     msleep(host->powerup_msecs);
   }
  }


  if (ios->power_mode == MMC_POWER_ON)
   mmc_spi_initsequence(host);
  if (canpower && ios->power_mode == 129) {
   int mres;
   u8 nullbyte = 0;

   host->spi->mode &= ~(SPI_CPOL|SPI_CPHA);
   mres = spi_setup(host->spi);
   if (mres < 0)
    dev_dbg(&host->spi->dev,
     "switch to SPI mode 0 failed\n");

   if (spi_write(host->spi, &nullbyte, 1) < 0)
    dev_dbg(&host->spi->dev,
     "put spi signals to low failed\n");
   msleep(10);
   if (mres == 0) {
    host->spi->mode |= (SPI_CPOL|SPI_CPHA);
    mres = spi_setup(host->spi);
    if (mres < 0)
     dev_dbg(&host->spi->dev,
      "switch back to SPI mode 3 failed\n");
   }
  }

  host->power_mode = ios->power_mode;
 }

 if (host->spi->max_speed_hz != ios->clock && ios->clock != 0) {
  int status;

  host->spi->max_speed_hz = ios->clock;
  status = spi_setup(host->spi);
  dev_dbg(&host->spi->dev,
   "mmc_spi:  clock to %d Hz, %d\n",
   host->spi->max_speed_hz, status);
 }
}
