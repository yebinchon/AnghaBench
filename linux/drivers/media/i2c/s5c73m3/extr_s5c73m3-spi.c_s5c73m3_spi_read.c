
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct spi_device {int dummy; } ;
struct s5c73m3 {struct spi_device* spi_dev; } ;


 int SPI_DIR_RX ;
 int spi_xmit (struct spi_device*,void*,unsigned int const,int ) ;

int s5c73m3_spi_read(struct s5c73m3 *state, void *addr,
       const unsigned int len, const unsigned int tx_size)
{
 struct spi_device *spi_dev = state->spi_dev;
 u32 count = len / tx_size;
 u32 extra = len % tx_size;
 unsigned int i, j = 0;
 int r = 0;

 for (i = 0; i < count; i++) {
  r = spi_xmit(spi_dev, addr + j, tx_size, SPI_DIR_RX);
  if (r < 0)
   return r;
  j += tx_size;
 }

 if (extra > 0)
  return spi_xmit(spi_dev, addr + j, extra, SPI_DIR_RX);

 return 0;
}
