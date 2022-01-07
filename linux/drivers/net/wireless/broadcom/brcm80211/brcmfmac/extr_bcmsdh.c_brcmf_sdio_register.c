
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int brcmf_err (char*,int) ;
 int brcmf_sdmmc_driver ;
 int sdio_register_driver (int *) ;

void brcmf_sdio_register(void)
{
 int ret;

 ret = sdio_register_driver(&brcmf_sdmmc_driver);
 if (ret)
  brcmf_err("sdio_register_driver failed: %d\n", ret);
}
