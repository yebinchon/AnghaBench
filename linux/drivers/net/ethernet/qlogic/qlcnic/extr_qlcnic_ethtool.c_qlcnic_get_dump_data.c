
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_fw_dump {int tmpl_hdr_size; scalar_t__ clr; int * data; int cap_mask; scalar_t__ size; scalar_t__ tmpl_hdr; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; scalar_t__ len; } ;
typedef int __le32 ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int cpu_to_le32 (int ) ;
 int memcpy (void*,int *,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int vfree (int *) ;

__attribute__((used)) static int
qlcnic_get_dump_data(struct net_device *netdev, struct ethtool_dump *dump,
   void *buffer)
{
 int i, copy_sz;
 u32 *hdr_ptr;
 __le32 *data;
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;

 if (!fw_dump->tmpl_hdr) {
  netdev_err(netdev, "FW Dump not supported\n");
  return -ENOTSUPP;
 }

 if (!fw_dump->clr) {
  netdev_info(netdev, "Dump not available\n");
  return -EINVAL;
 }


 copy_sz = fw_dump->tmpl_hdr_size;
 hdr_ptr = (u32 *)fw_dump->tmpl_hdr;
 data = buffer;
 for (i = 0; i < copy_sz/sizeof(u32); i++)
  *data++ = cpu_to_le32(*hdr_ptr++);


 memcpy(buffer + copy_sz, fw_dump->data, fw_dump->size);
 dump->len = copy_sz + fw_dump->size;
 dump->flag = fw_dump->cap_mask;


 vfree(fw_dump->data);
 fw_dump->data = ((void*)0);
 fw_dump->clr = 0;
 netdev_info(netdev, "extracted the FW dump Successfully\n");
 return 0;
}
