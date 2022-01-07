
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int * phy_dev; int fw_port; } ;


 int phy_device_free (int *) ;
 int phy_device_remove (int *) ;
 int to_acpi_device_node (int ) ;

__attribute__((used)) static void hns_mac_remove_phydev(struct hns_mac_cb *mac_cb)
{
 if (!to_acpi_device_node(mac_cb->fw_port) || !mac_cb->phy_dev)
  return;

 phy_device_remove(mac_cb->phy_dev);
 phy_device_free(mac_cb->phy_dev);

 mac_cb->phy_dev = ((void*)0);
}
