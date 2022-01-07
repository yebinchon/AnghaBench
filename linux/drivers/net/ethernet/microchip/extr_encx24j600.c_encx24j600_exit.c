
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int encx24j600_spi_net_driver ;
 int spi_unregister_driver (int *) ;

__attribute__((used)) static void encx24j600_exit(void)
{
 spi_unregister_driver(&encx24j600_spi_net_driver);
}
