
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {struct cqspi_flash_pdata* priv; } ;
struct cqspi_st {int bus_mutex; } ;
struct cqspi_flash_pdata {struct cqspi_st* cqspi; } ;
typedef enum spi_nor_ops { ____Placeholder_spi_nor_ops } spi_nor_ops ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void cqspi_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
{
 struct cqspi_flash_pdata *f_pdata = nor->priv;
 struct cqspi_st *cqspi = f_pdata->cqspi;

 mutex_unlock(&cqspi->bus_mutex);
}
