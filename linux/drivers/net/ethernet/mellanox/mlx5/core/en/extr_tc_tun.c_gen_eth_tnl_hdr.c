
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_hdr {void* h_vlan_encapsulated_proto; void* h_vlan_TCI; } ;
struct net_device {int dev_addr; } ;
struct mlx5e_encap_entry {int h_dest; } ;
struct ethhdr {void* h_proto; int h_source; int h_dest; } ;


 int ETH_HLEN ;
 int VLAN_HLEN ;
 int ether_addr_copy (int ,int ) ;
 void* htons (int ) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int vlan_dev_vlan_id (struct net_device*) ;
 void* vlan_dev_vlan_proto (struct net_device*) ;

__attribute__((used)) static char *gen_eth_tnl_hdr(char *buf, struct net_device *dev,
        struct mlx5e_encap_entry *e,
        u16 proto)
{
 struct ethhdr *eth = (struct ethhdr *)buf;
 char *ip;

 ether_addr_copy(eth->h_dest, e->h_dest);
 ether_addr_copy(eth->h_source, dev->dev_addr);
 if (is_vlan_dev(dev)) {
  struct vlan_hdr *vlan = (struct vlan_hdr *)
     ((char *)eth + ETH_HLEN);
  ip = (char *)vlan + VLAN_HLEN;
  eth->h_proto = vlan_dev_vlan_proto(dev);
  vlan->h_vlan_TCI = htons(vlan_dev_vlan_id(dev));
  vlan->h_vlan_encapsulated_proto = htons(proto);
 } else {
  eth->h_proto = htons(proto);
  ip = (char *)eth + ETH_HLEN;
 }

 return ip;
}
