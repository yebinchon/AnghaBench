
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; int sa_family; } ;
struct r8152 {scalar_t__ version; struct net_device* netdev; } ;
struct net_device {int dev_addr; int type; } ;


 int PLA_BACKUP ;
 int PLA_IDR ;
 scalar_t__ RTL_VER_01 ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int netif_err (struct r8152*,int ,struct net_device*,char*,...) ;
 int netif_info (struct r8152*,int ,struct net_device*,char*,int ) ;
 int pla_ocp_read (struct r8152*,int ,int,int ) ;
 int probe ;
 int vendor_mac_passthru_addr_read (struct r8152*,struct sockaddr*) ;

__attribute__((used)) static int determine_ethernet_addr(struct r8152 *tp, struct sockaddr *sa)
{
 struct net_device *dev = tp->netdev;
 int ret;

 sa->sa_family = dev->type;

 if (tp->version == RTL_VER_01) {
  ret = pla_ocp_read(tp, PLA_IDR, 8, sa->sa_data);
 } else {



  ret = vendor_mac_passthru_addr_read(tp, sa);
  if (ret < 0)
   ret = pla_ocp_read(tp, PLA_BACKUP, 8, sa->sa_data);
 }

 if (ret < 0) {
  netif_err(tp, probe, dev, "Get ether addr fail\n");
 } else if (!is_valid_ether_addr(sa->sa_data)) {
  netif_err(tp, probe, dev, "Invalid ether addr %pM\n",
     sa->sa_data);
  eth_hw_addr_random(dev);
  ether_addr_copy(sa->sa_data, dev->dev_addr);
  netif_info(tp, probe, dev, "Random ether addr %pM\n",
      sa->sa_data);
  return 0;
 }

 return ret;
}
