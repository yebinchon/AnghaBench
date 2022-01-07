
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int hw; int state; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int EAGAIN ;
 int EBUSY ;
 int I40E_GLLAN_TSOMSK_F ;
 int I40E_GLLAN_TSOMSK_L ;
 int I40E_GLLAN_TSOMSK_M ;
 int TCP_FLAG_CWR ;
 int TCP_FLAG_FIN ;
 int TCP_FLAG_PSH ;
 int __I40E_BAD_EEPROM ;
 int __I40E_TESTING ;
 int be32_to_cpu (int) ;
 scalar_t__ i40e_force_link_state (struct i40e_pf*,int) ;
 int i40e_vsi_open (struct i40e_vsi*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;
 int wr32 (int *,int ,int) ;

int i40e_open(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 int err;


 if (test_bit(__I40E_TESTING, pf->state) ||
     test_bit(__I40E_BAD_EEPROM, pf->state))
  return -EBUSY;

 netif_carrier_off(netdev);

 if (i40e_force_link_state(pf, 1))
  return -EAGAIN;

 err = i40e_vsi_open(vsi);
 if (err)
  return err;


 wr32(&pf->hw, I40E_GLLAN_TSOMSK_F, be32_to_cpu(TCP_FLAG_PSH |
             TCP_FLAG_FIN) >> 16);
 wr32(&pf->hw, I40E_GLLAN_TSOMSK_M, be32_to_cpu(TCP_FLAG_PSH |
             TCP_FLAG_FIN |
             TCP_FLAG_CWR) >> 16);
 wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >> 16);

 udp_tunnel_get_rx_info(netdev);

 return 0;
}
