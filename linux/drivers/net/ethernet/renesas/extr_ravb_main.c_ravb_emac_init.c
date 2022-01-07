
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int features; int* dev_addr; } ;


 int ECMR ;
 int ECMR_DM ;
 int ECMR_RCSC ;
 int ECMR_RE ;
 int ECMR_TE ;
 int ECMR_ZPF ;
 int ECSIPR ;
 int ECSIPR_ICDIP ;
 int ECSIPR_LCHNGIP ;
 int ECSIPR_MPDIP ;
 int ECSR ;
 int ECSR_ICD ;
 int ECSR_MPD ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int MAHR ;
 int MALR ;
 int NETIF_F_RXCSUM ;
 int RFLR ;
 int VLAN_HLEN ;
 int ravb_set_rate (struct net_device*) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static void ravb_emac_init(struct net_device *ndev)
{

 ravb_write(ndev, ndev->mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN, RFLR);


 ravb_write(ndev, ECMR_ZPF | ECMR_DM |
     (ndev->features & NETIF_F_RXCSUM ? ECMR_RCSC : 0) |
     ECMR_TE | ECMR_RE, ECMR);

 ravb_set_rate(ndev);


 ravb_write(ndev,
     (ndev->dev_addr[0] << 24) | (ndev->dev_addr[1] << 16) |
     (ndev->dev_addr[2] << 8) | (ndev->dev_addr[3]), MAHR);
 ravb_write(ndev,
     (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5]), MALR);


 ravb_write(ndev, ECSR_ICD | ECSR_MPD, ECSR);


 ravb_write(ndev, ECSIPR_ICDIP | ECSIPR_MPDIP | ECSIPR_LCHNGIP, ECSIPR);
}
