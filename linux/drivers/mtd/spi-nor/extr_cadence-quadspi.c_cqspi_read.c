
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct spi_nor {struct cqspi_flash_pdata* priv; } ;
struct cqspi_flash_pdata {scalar_t__ use_direct_mode; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int cqspi_direct_read_execute (struct spi_nor*,int *,int ,size_t) ;
 int cqspi_indirect_read_execute (struct spi_nor*,int *,int ,size_t) ;
 int cqspi_read_setup (struct spi_nor*) ;
 int cqspi_set_protocol (struct spi_nor*,int) ;

__attribute__((used)) static ssize_t cqspi_read(struct spi_nor *nor, loff_t from,
     size_t len, u_char *buf)
{
 struct cqspi_flash_pdata *f_pdata = nor->priv;
 int ret;

 ret = cqspi_set_protocol(nor, 1);
 if (ret)
  return ret;

 ret = cqspi_read_setup(nor);
 if (ret)
  return ret;

 if (f_pdata->use_direct_mode)
  ret = cqspi_direct_read_execute(nor, buf, from, len);
 else
  ret = cqspi_indirect_read_execute(nor, buf, from, len);
 if (ret)
  return ret;

 return len;
}
