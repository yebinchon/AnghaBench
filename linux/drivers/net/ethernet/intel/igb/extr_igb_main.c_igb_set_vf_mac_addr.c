
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf_data_storage {int flags; int trusted; } ;
struct pci_dev {int dev; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct pci_dev* pdev; } ;


 int E1000_VT_MSGINFO_MASK ;
 int EINVAL ;
 int IGB_VF_FLAG_PF_SET_MAC ;
 int dev_warn (int *,char*,int) ;
 int igb_set_vf_mac (struct igb_adapter*,int,unsigned char*) ;
 int igb_set_vf_mac_filter (struct igb_adapter*,int,int,unsigned char*) ;
 int is_valid_ether_addr (unsigned char*) ;

__attribute__((used)) static int igb_set_vf_mac_addr(struct igb_adapter *adapter, u32 *msg, int vf)
{
 struct pci_dev *pdev = adapter->pdev;
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];
 u32 info = msg[0] & E1000_VT_MSGINFO_MASK;




 unsigned char *addr = (unsigned char *)&msg[1];
 int ret = 0;

 if (!info) {
  if ((vf_data->flags & IGB_VF_FLAG_PF_SET_MAC) &&
      !vf_data->trusted) {
   dev_warn(&pdev->dev,
     "VF %d attempted to override administratively set MAC address\nReload the VF driver to resume operations\n",
     vf);
   return -EINVAL;
  }

  if (!is_valid_ether_addr(addr)) {
   dev_warn(&pdev->dev,
     "VF %d attempted to set invalid MAC\n",
     vf);
   return -EINVAL;
  }

  ret = igb_set_vf_mac(adapter, vf, addr);
 } else {
  ret = igb_set_vf_mac_filter(adapter, vf, info, addr);
 }

 return ret;
}
