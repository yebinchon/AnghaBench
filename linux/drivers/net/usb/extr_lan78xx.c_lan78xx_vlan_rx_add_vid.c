
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct lan78xx_priv {int* vlan_table; int set_vlan; } ;
struct lan78xx_net {scalar_t__* data; } ;
typedef int __be16 ;


 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int lan78xx_vlan_rx_add_vid(struct net_device *netdev,
       __be16 proto, u16 vid)
{
 struct lan78xx_net *dev = netdev_priv(netdev);
 struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
 u16 vid_bit_index;
 u16 vid_dword_index;

 vid_dword_index = (vid >> 5) & 0x7F;
 vid_bit_index = vid & 0x1F;

 pdata->vlan_table[vid_dword_index] |= (1 << vid_bit_index);


 schedule_work(&pdata->set_vlan);

 return 0;
}
