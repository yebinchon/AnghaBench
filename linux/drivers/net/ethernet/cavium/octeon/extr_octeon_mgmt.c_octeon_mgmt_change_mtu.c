
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mgmt {scalar_t__ agl; } ;
struct net_device {int mtu; } ;


 scalar_t__ AGL_GMX_RX_FRM_MAX ;
 scalar_t__ AGL_GMX_RX_JABBER ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int VLAN_HLEN ;
 int cvmx_write_csr (scalar_t__,int) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int octeon_mgmt_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 int max_packet = new_mtu + ETH_HLEN + ETH_FCS_LEN;

 netdev->mtu = new_mtu;




 cvmx_write_csr(p->agl + AGL_GMX_RX_FRM_MAX, max_packet);





 cvmx_write_csr(p->agl + AGL_GMX_RX_JABBER,
         (max_packet + 7 + VLAN_HLEN * 2) & 0xfff8);

 return 0;
}
