
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int pr_info (char*) ;

__attribute__((used)) static int slic_ds26522_remove(struct spi_device *spi)
{
 pr_info("DS26522 module uninstalled\n");
 return 0;
}
