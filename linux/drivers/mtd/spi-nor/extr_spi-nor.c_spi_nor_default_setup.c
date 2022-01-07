
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_nor_hwcaps {int mask; } ;
struct TYPE_2__ {int mask; } ;
struct spi_nor_flash_parameter {TYPE_1__ hwcaps; } ;
struct spi_nor {int dev; scalar_t__ spimem; struct spi_nor_flash_parameter params; } ;


 int SNOR_HWCAPS_X_X_X ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int spi_nor_select_erase (struct spi_nor*) ;
 int spi_nor_select_pp (struct spi_nor*,int) ;
 int spi_nor_select_read (struct spi_nor*,int) ;
 int spi_nor_spimem_adjust_hwcaps (struct spi_nor*,int*) ;

__attribute__((used)) static int spi_nor_default_setup(struct spi_nor *nor,
     const struct spi_nor_hwcaps *hwcaps)
{
 struct spi_nor_flash_parameter *params = &nor->params;
 u32 ignored_mask, shared_mask;
 int err;





 shared_mask = hwcaps->mask & params->hwcaps.mask;

 if (nor->spimem) {





  spi_nor_spimem_adjust_hwcaps(nor, &shared_mask);
 } else {





  ignored_mask = SNOR_HWCAPS_X_X_X;
  if (shared_mask & ignored_mask) {
   dev_dbg(nor->dev,
    "SPI n-n-n protocols are not supported.\n");
   shared_mask &= ~ignored_mask;
  }
 }


 err = spi_nor_select_read(nor, shared_mask);
 if (err) {
  dev_err(nor->dev,
   "can't select read settings supported by both the SPI controller and memory.\n");
  return err;
 }


 err = spi_nor_select_pp(nor, shared_mask);
 if (err) {
  dev_err(nor->dev,
   "can't select write settings supported by both the SPI controller and memory.\n");
  return err;
 }


 err = spi_nor_select_erase(nor);
 if (err) {
  dev_err(nor->dev,
   "can't select erase settings supported by both the SPI controller and memory.\n");
  return err;
 }

 return 0;
}
