
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b43_sdio_driver ;
 int sdio_unregister_driver (int *) ;

void b43_sdio_exit(void)
{
 sdio_unregister_driver(&b43_sdio_driver);
}
