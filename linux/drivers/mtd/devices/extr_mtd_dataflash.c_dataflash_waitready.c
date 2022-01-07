
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int dataflash_status (struct spi_device*) ;
 int dev_dbg (int *,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dataflash_waitready(struct spi_device *spi)
{
 int status;

 for (;;) {
  status = dataflash_status(spi);
  if (status < 0) {
   dev_dbg(&spi->dev, "status %d?\n", status);
   status = 0;
  }

  if (status & (1 << 7))
   return status;

  usleep_range(3000, 4000);
 }
}
