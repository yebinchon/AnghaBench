
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDIO ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_sdmmc_driver ;
 int sdio_unregister_driver (int *) ;

void brcmf_sdio_exit(void)
{
 brcmf_dbg(SDIO, "Enter\n");

 sdio_unregister_driver(&brcmf_sdmmc_driver);
}
