
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {int irq_enabled; TYPE_1__* cd; scalar_t__ duplex; } ;
struct net_device {int mtu; int features; } ;
struct TYPE_2__ {int (* soft_reset ) (struct net_device*) ;int fdr_value; int trscer_err_mask; int fcftr_value; int eesipr_value; int ecsr_value; int ecsipr_value; scalar_t__ tpauser; scalar_t__ mpr; scalar_t__ apr; int (* set_rate ) (struct net_device*) ;int no_trimd; scalar_t__ bculr; scalar_t__ nbst; scalar_t__ hw_swap; scalar_t__ rpadir; scalar_t__ rmiimode; } ;


 int APR ;
 int BCULR ;
 int ECMR ;
 int ECMR_DM ;
 int ECMR_RCSC ;
 int ECMR_RE ;
 int ECMR_TE ;
 int ECMR_ZPF ;
 int ECSIPR ;
 int ECSR ;
 int EDMR ;
 int EDMR_EL ;
 int EDMR_NBST ;
 int EDRRR ;
 int EDRRR_R ;
 int EESIPR ;
 int EESR ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int FCFTR ;
 int FDR ;
 int MPR ;
 int NETIF_F_RXCSUM ;
 int NET_IP_ALIGN ;
 int RFLR ;
 int RMCR ;
 int RMCR_RNC ;
 int RMIIMODE ;
 int RPADIR ;
 int TFTR ;
 int TPAUSER ;
 int TPAUSER_UNLIMITED ;
 int TRIMD ;
 int TRSCER ;
 int VLAN_HLEN ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;
 int sh_eth_ring_format (struct net_device*) ;
 int sh_eth_write (struct net_device*,int,int ) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 int update_mac_address (struct net_device*) ;

__attribute__((used)) static int sh_eth_dev_init(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int ret;


 ret = mdp->cd->soft_reset(ndev);
 if (ret)
  return ret;

 if (mdp->cd->rmiimode)
  sh_eth_write(ndev, 0x1, RMIIMODE);


 sh_eth_ring_format(ndev);
 if (mdp->cd->rpadir)
  sh_eth_write(ndev, NET_IP_ALIGN << 16, RPADIR);


 sh_eth_write(ndev, 0, EESIPR);






  sh_eth_write(ndev, 0, EDMR);


 sh_eth_write(ndev, mdp->cd->fdr_value, FDR);
 sh_eth_write(ndev, 0, TFTR);


 sh_eth_write(ndev, RMCR_RNC, RMCR);

 sh_eth_write(ndev, mdp->cd->trscer_err_mask, TRSCER);


 if (mdp->cd->nbst)
  sh_eth_modify(ndev, EDMR, EDMR_NBST, EDMR_NBST);


 if (mdp->cd->bculr)
  sh_eth_write(ndev, 0x800, BCULR);

 sh_eth_write(ndev, mdp->cd->fcftr_value, FCFTR);

 if (!mdp->cd->no_trimd)
  sh_eth_write(ndev, 0, TRIMD);


 sh_eth_write(ndev, ndev->mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN,
       RFLR);

 sh_eth_modify(ndev, EESR, 0, 0);
 mdp->irq_enabled = 1;
 sh_eth_write(ndev, mdp->cd->eesipr_value, EESIPR);


 sh_eth_write(ndev, ECMR_ZPF | (mdp->duplex ? ECMR_DM : 0) |
       (ndev->features & NETIF_F_RXCSUM ? ECMR_RCSC : 0) |
       ECMR_TE | ECMR_RE, ECMR);

 if (mdp->cd->set_rate)
  mdp->cd->set_rate(ndev);


 sh_eth_write(ndev, mdp->cd->ecsr_value, ECSR);


 sh_eth_write(ndev, mdp->cd->ecsipr_value, ECSIPR);


 update_mac_address(ndev);


 if (mdp->cd->apr)
  sh_eth_write(ndev, 1, APR);
 if (mdp->cd->mpr)
  sh_eth_write(ndev, 1, MPR);
 if (mdp->cd->tpauser)
  sh_eth_write(ndev, TPAUSER_UNLIMITED, TPAUSER);


 sh_eth_write(ndev, EDRRR_R, EDRRR);

 return ret;
}
