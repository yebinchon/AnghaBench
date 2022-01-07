
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct flash_info {int flags; int pageoffset; int pagesize; int nr_pages; int name; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct flash_info*) ;
 int PTR_ERR (struct flash_info*) ;
 int SUP_POW2PS ;
 int add_dataflash (struct spi_device*,char*,int,int,int) ;
 int add_dataflash_otp (struct spi_device*,int ,int ,int ,int ,char) ;
 int dataflash_status (struct spi_device*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 struct flash_info* jedec_probe (struct spi_device*) ;

__attribute__((used)) static int dataflash_probe(struct spi_device *spi)
{
 int status;
 struct flash_info *info;
 info = jedec_probe(spi);
 if (IS_ERR(info))
  return PTR_ERR(info);
 if (info != ((void*)0))
  return add_dataflash_otp(spi, info->name, info->nr_pages,
    info->pagesize, info->pageoffset,
    (info->flags & SUP_POW2PS) ? 'd' : 'c');





 status = dataflash_status(spi);
 if (status <= 0 || status == 0xff) {
  dev_dbg(&spi->dev, "status error %d\n", status);
  if (status == 0 || status == 0xff)
   status = -ENODEV;
  return status;
 }





 switch (status & 0x3c) {
 case 0x0c:
  status = add_dataflash(spi, "AT45DB011B", 512, 264, 9);
  break;
 case 0x14:
  status = add_dataflash(spi, "AT45DB021B", 1024, 264, 9);
  break;
 case 0x1c:
  status = add_dataflash(spi, "AT45DB041x", 2048, 264, 9);
  break;
 case 0x24:
  status = add_dataflash(spi, "AT45DB081B", 4096, 264, 9);
  break;
 case 0x2c:
  status = add_dataflash(spi, "AT45DB161x", 4096, 528, 10);
  break;
 case 0x34:
  status = add_dataflash(spi, "AT45DB321x", 8192, 528, 10);
  break;
 case 0x38:
 case 0x3c:
  status = add_dataflash(spi, "AT45DB642x", 8192, 1056, 11);
  break;

 default:
  dev_info(&spi->dev, "unsupported device (%x)\n",
    status & 0x3c);
  status = -ENODEV;
 }

 if (status < 0)
  dev_dbg(&spi->dev, "add_dataflash --> %d\n", status);

 return status;
}
