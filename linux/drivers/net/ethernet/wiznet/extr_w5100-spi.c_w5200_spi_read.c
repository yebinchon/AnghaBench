
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef int cmd ;


 int spi_write_then_read (struct spi_device*,int*,int,int*,int) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int w5200_spi_read(struct net_device *ndev, u32 addr)
{
 struct spi_device *spi = to_spi_device(ndev->dev.parent);
 u8 cmd[4] = { addr >> 8, addr & 0xff, 0, 1 };
 u8 data;
 int ret;

 ret = spi_write_then_read(spi, cmd, sizeof(cmd), &data, 1);

 return ret ? ret : data;
}
