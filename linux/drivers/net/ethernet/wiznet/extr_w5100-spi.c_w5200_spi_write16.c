
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef int cmd ;


 int W5200_SPI_WRITE_OPCODE ;
 int spi_write_then_read (struct spi_device*,int*,int,int *,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int w5200_spi_write16(struct net_device *ndev, u32 addr, u16 data)
{
 struct spi_device *spi = to_spi_device(ndev->dev.parent);
 u8 cmd[6] = {
  addr >> 8, addr & 0xff,
  W5200_SPI_WRITE_OPCODE, 2,
  data >> 8, data & 0xff
 };

 return spi_write_then_read(spi, cmd, sizeof(cmd), ((void*)0), 0);
}
