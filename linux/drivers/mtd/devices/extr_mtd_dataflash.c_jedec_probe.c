
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct spi_device {int dev; } ;
struct flash_info {int dummy; } ;
typedef int jedec ;
typedef int __be64 ;


 scalar_t__ CFI_MFR_ATMEL ;
 int DATAFLASH_SHIFT_EXTID ;
 int DATAFLASH_SHIFT_ID ;
 int ENODEV ;
 struct flash_info* ERR_PTR (int) ;
 int IS_ERR (struct flash_info*) ;
 scalar_t__ OP_READ_ID ;
 int be64_to_cpup (int *) ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 struct flash_info* jedec_lookup (struct spi_device*,int,int) ;
 int spi_write_then_read (struct spi_device*,scalar_t__*,int,scalar_t__*,unsigned int const) ;

__attribute__((used)) static struct flash_info *jedec_probe(struct spi_device *spi)
{
 int ret;
 u8 code = OP_READ_ID;
 u64 jedec;
 u8 id[sizeof(jedec)] = {0};
 const unsigned int id_size = 5;
 struct flash_info *info;
 ret = spi_write_then_read(spi, &code, 1, id, id_size);
 if (ret < 0) {
  dev_dbg(&spi->dev, "error %d reading JEDEC ID\n", ret);
  return ERR_PTR(ret);
 }

 if (id[0] != CFI_MFR_ATMEL)
  return ((void*)0);

 jedec = be64_to_cpup((__be64 *)id);





 info = jedec_lookup(spi, jedec >> DATAFLASH_SHIFT_EXTID, 1);
 if (!IS_ERR(info))
  return info;




 info = jedec_lookup(spi, jedec >> DATAFLASH_SHIFT_ID, 0);
 if (!IS_ERR(info))
  return info;





 dev_warn(&spi->dev, "JEDEC id %016llx not handled\n", jedec);
 return ERR_PTR(-ENODEV);
}
