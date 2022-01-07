
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct spi_nor {struct nxp_spifi* priv; } ;
struct nxp_spifi {scalar_t__ flash_base; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int memcpy_fromio (int *,scalar_t__,size_t) ;
 int nxp_spifi_set_memory_mode_on (struct nxp_spifi*) ;

__attribute__((used)) static ssize_t nxp_spifi_read(struct spi_nor *nor, loff_t from, size_t len,
         u_char *buf)
{
 struct nxp_spifi *spifi = nor->priv;
 int ret;

 ret = nxp_spifi_set_memory_mode_on(spifi);
 if (ret)
  return ret;

 memcpy_fromio(buf, spifi->flash_base + from, len);

 return len;
}
