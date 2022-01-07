
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct pci_dev {int dev; } ;
struct pasemi_mac {int mac_addr; struct pci_dev* pdev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ETH_ALEN ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int mac_pton (int const*,int const*) ;
 int memcpy (int ,int const*,int) ;
 int const* of_get_property (struct device_node*,char*,int*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static int pasemi_get_mac_addr(struct pasemi_mac *mac)
{
 struct pci_dev *pdev = mac->pdev;
 struct device_node *dn = pci_device_to_OF_node(pdev);
 int len;
 const u8 *maddr;
 u8 addr[ETH_ALEN];

 if (!dn) {
  dev_dbg(&pdev->dev,
     "No device node for mac, not configuring\n");
  return -ENOENT;
 }

 maddr = of_get_property(dn, "local-mac-address", &len);

 if (maddr && len == ETH_ALEN) {
  memcpy(mac->mac_addr, maddr, ETH_ALEN);
  return 0;
 }





 if (maddr == ((void*)0))
  maddr = of_get_property(dn, "mac-address", ((void*)0));

 if (maddr == ((void*)0)) {
  dev_warn(&pdev->dev,
    "no mac address in device tree, not configuring\n");
  return -ENOENT;
 }

 if (!mac_pton(maddr, addr)) {
  dev_warn(&pdev->dev,
    "can't parse mac address, not configuring\n");
  return -EINVAL;
 }

 memcpy(mac->mac_addr, addr, ETH_ALEN);

 return 0;
}
