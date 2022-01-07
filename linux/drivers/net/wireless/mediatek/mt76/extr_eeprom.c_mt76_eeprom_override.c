
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt76_dev {int macaddr; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int IS_ERR (int const*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int eth_random_addr (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int is_valid_ether_addr (int ) ;
 int * of_get_mac_address (struct device_node*) ;

void
mt76_eeprom_override(struct mt76_dev *dev)
{
 if (!is_valid_ether_addr(dev->macaddr)) {
  eth_random_addr(dev->macaddr);
  dev_info(dev->dev,
    "Invalid MAC address, using random address %pM\n",
    dev->macaddr);
 }
}
