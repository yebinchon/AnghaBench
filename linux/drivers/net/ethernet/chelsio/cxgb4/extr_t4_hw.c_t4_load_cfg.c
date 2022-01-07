
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EFBIG ;
 unsigned int FLASH_CFG_MAX_SIZE ;
 int SF_PAGE_SIZE ;
 unsigned int SF_SEC_SIZE ;
 int dev_err (int ,char*,...) ;
 int t4_flash_cfg_addr (struct adapter*) ;
 int t4_flash_erase_sectors (struct adapter*,unsigned int,unsigned int) ;
 int t4_write_flash (struct adapter*,unsigned int,int,int const*) ;

int t4_load_cfg(struct adapter *adap, const u8 *cfg_data, unsigned int size)
{
 int ret, i, n, cfg_addr;
 unsigned int addr;
 unsigned int flash_cfg_start_sec;
 unsigned int sf_sec_size = adap->params.sf_size / adap->params.sf_nsec;

 cfg_addr = t4_flash_cfg_addr(adap);
 if (cfg_addr < 0)
  return cfg_addr;

 addr = cfg_addr;
 flash_cfg_start_sec = addr / SF_SEC_SIZE;

 if (size > FLASH_CFG_MAX_SIZE) {
  dev_err(adap->pdev_dev, "cfg file too large, max is %u bytes\n",
   FLASH_CFG_MAX_SIZE);
  return -EFBIG;
 }

 i = DIV_ROUND_UP(FLASH_CFG_MAX_SIZE,
    sf_sec_size);
 ret = t4_flash_erase_sectors(adap, flash_cfg_start_sec,
         flash_cfg_start_sec + i - 1);



 if (ret || size == 0)
  goto out;


 for (i = 0; i < size; i += SF_PAGE_SIZE) {
  if ((size - i) < SF_PAGE_SIZE)
   n = size - i;
  else
   n = SF_PAGE_SIZE;
  ret = t4_write_flash(adap, addr, n, cfg_data);
  if (ret)
   goto out;

  addr += SF_PAGE_SIZE;
  cfg_data += SF_PAGE_SIZE;
 }

out:
 if (ret)
  dev_err(adap->pdev_dev, "config file %s failed %d\n",
   (size == 0 ? "clear" : "download"), ret);
 return ret;
}
