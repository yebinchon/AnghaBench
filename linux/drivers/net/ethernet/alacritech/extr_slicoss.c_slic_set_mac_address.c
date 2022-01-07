
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct slic_device {TYPE_1__* netdev; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int SLIC_REG_WRADDRAH ;
 int SLIC_REG_WRADDRAL ;
 int SLIC_REG_WRADDRBH ;
 int SLIC_REG_WRADDRBL ;
 int slic_flush_write (struct slic_device*) ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static void slic_set_mac_address(struct slic_device *sdev)
{
 u8 *addr = sdev->netdev->dev_addr;
 u32 val;

 val = addr[5] | addr[4] << 8 | addr[3] << 16 | addr[2] << 24;

 slic_write(sdev, SLIC_REG_WRADDRAL, val);
 slic_write(sdev, SLIC_REG_WRADDRBL, val);

 val = addr[0] << 8 | addr[1];

 slic_write(sdev, SLIC_REG_WRADDRAH, val);
 slic_write(sdev, SLIC_REG_WRADDRBH, val);
 slic_flush_write(sdev);
}
