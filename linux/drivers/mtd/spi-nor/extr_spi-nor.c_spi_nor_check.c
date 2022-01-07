
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int write_reg; int read_reg; int write; int read; int spimem; int dev; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int spi_nor_check(struct spi_nor *nor)
{
 if (!nor->dev ||
     (!nor->spimem &&
     (!nor->read || !nor->write || !nor->read_reg ||
       !nor->write_reg))) {
  pr_err("spi-nor: please fill all the necessary fields!\n");
  return -EINVAL;
 }

 return 0;
}
