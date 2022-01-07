
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int txbuf ;
struct spi_device {int dummy; } ;


 int B53_SPI_CMD_NORMAL ;
 int B53_SPI_CMD_WRITE ;
 int B53_SPI_PAGE_SELECT ;
 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static inline int b53_spi_set_page(struct spi_device *spi, u8 page)
{
 u8 txbuf[3];

 txbuf[0] = B53_SPI_CMD_NORMAL | B53_SPI_CMD_WRITE;
 txbuf[1] = B53_SPI_PAGE_SELECT;
 txbuf[2] = page;

 return spi_write(spi, txbuf, sizeof(txbuf));
}
