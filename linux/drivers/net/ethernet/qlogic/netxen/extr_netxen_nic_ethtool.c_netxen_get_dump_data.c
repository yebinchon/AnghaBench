
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_minidump {int md_template_size; int * md_capture_buff; int md_capture_mask; scalar_t__ md_capture_size; scalar_t__ md_template; } ;
struct netxen_adapter {scalar_t__ fw_mdump_rdy; struct netxen_minidump mdump; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; scalar_t__ len; } ;


 int EINVAL ;
 int cpu_to_le32 (int ) ;
 int memcpy (void*,int *,scalar_t__) ;
 int netdev_info (struct net_device*,char*) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int vfree (int *) ;

__attribute__((used)) static int
netxen_get_dump_data(struct net_device *netdev, struct ethtool_dump *dump,
   void *buffer)
{
 int i, copy_sz;
 u32 *hdr_ptr, *data;
 struct netxen_adapter *adapter = netdev_priv(netdev);
 struct netxen_minidump *mdump = &adapter->mdump;


 if (!adapter->fw_mdump_rdy) {
  netdev_info(netdev, "Dump not available\n");
  return -EINVAL;
 }

 copy_sz = mdump->md_template_size;
 hdr_ptr = (u32 *) mdump->md_template;
 data = buffer;
 for (i = 0; i < copy_sz/sizeof(u32); i++)
  *data++ = cpu_to_le32(*hdr_ptr++);


 memcpy(buffer + copy_sz,
  mdump->md_capture_buff + mdump->md_template_size,
   mdump->md_capture_size);
 dump->len = copy_sz + mdump->md_capture_size;
 dump->flag = mdump->md_capture_mask;


 vfree(mdump->md_capture_buff);
 mdump->md_capture_buff = ((void*)0);
 adapter->fw_mdump_rdy = 0;
 netdev_info(netdev, "extracted the fw dump Successfully\n");
 return 0;
}
