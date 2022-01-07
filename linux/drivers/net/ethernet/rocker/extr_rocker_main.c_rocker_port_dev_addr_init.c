
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {TYPE_1__* dev; struct rocker* rocker; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int dev_warn (int *,char*) ;
 int eth_hw_addr_random (TYPE_1__*) ;
 int rocker_cmd_get_port_settings_macaddr (struct rocker_port*,int ) ;

__attribute__((used)) static void rocker_port_dev_addr_init(struct rocker_port *rocker_port)
{
 const struct rocker *rocker = rocker_port->rocker;
 const struct pci_dev *pdev = rocker->pdev;
 int err;

 err = rocker_cmd_get_port_settings_macaddr(rocker_port,
         rocker_port->dev->dev_addr);
 if (err) {
  dev_warn(&pdev->dev, "failed to get mac address, using random\n");
  eth_hw_addr_random(rocker_port->dev);
 }
}
