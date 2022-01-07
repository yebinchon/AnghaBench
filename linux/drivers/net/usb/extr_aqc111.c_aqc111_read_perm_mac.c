
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int perm_addr; } ;


 int AQ_FLASH_PARAMETERS ;
 int ETH_ALEN ;
 int aqc111_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int ether_addr_copy (int ,int *) ;

__attribute__((used)) static int aqc111_read_perm_mac(struct usbnet *dev)
{
 u8 buf[ETH_ALEN];
 int ret;

 ret = aqc111_read_cmd(dev, AQ_FLASH_PARAMETERS, 0, 0, ETH_ALEN, buf);
 if (ret < 0)
  goto out;

 ether_addr_copy(dev->net->perm_addr, buf);

 return 0;
out:
 return ret;
}
