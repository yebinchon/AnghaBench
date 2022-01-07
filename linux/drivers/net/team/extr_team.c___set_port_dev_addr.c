
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; int __data; } ;
struct sockaddr {int dummy; } ;
struct net_device {int type; int addr_len; } ;


 int dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int memcpy (int ,unsigned char const*,int ) ;

__attribute__((used)) static int __set_port_dev_addr(struct net_device *port_dev,
          const unsigned char *dev_addr)
{
 struct sockaddr_storage addr;

 memcpy(addr.__data, dev_addr, port_dev->addr_len);
 addr.ss_family = port_dev->type;
 return dev_set_mac_address(port_dev, (struct sockaddr *)&addr, ((void*)0));
}
