
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tx_buf ;
struct spi_device {int dummy; } ;


 int spi_write_then_read (struct spi_device*,int *,int,int *,int ) ;

__attribute__((used)) static int adgs1408_spi_reg_write(struct spi_device *spi,
      u8 reg_addr, u8 reg_data)
{
 u8 tx_buf[2];

 tx_buf[0] = reg_addr;
 tx_buf[1] = reg_data;

 return spi_write_then_read(spi, tx_buf, sizeof(tx_buf), ((void*)0), 0);
}
