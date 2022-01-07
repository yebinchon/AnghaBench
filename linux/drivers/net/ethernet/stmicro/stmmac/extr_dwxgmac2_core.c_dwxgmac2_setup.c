
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stmmac_priv {TYPE_2__* plat; int ioaddr; TYPE_1__* dev; int device; struct mac_device_info* hw; } ;
struct TYPE_10__ {int addr_shift; int clk_csr_shift; void* clk_csr_mask; void* reg_mask; scalar_t__ reg_shift; void* addr_mask; int data; int addr; } ;
struct TYPE_8__ {int speed10000; int speed5000; int speed2500; } ;
struct TYPE_9__ {int speed_mask; TYPE_3__ xgmii; int speed2500; int speed1000; int speed100; int speed10; scalar_t__ duplex; } ;
struct mac_device_info {TYPE_5__ mii; TYPE_4__ link; scalar_t__ multicast_filter_bins; scalar_t__ mcast_bits_log2; int unicast_filter_entries; int pcsr; } ;
struct TYPE_7__ {int unicast_filter_entries; scalar_t__ multicast_filter_bins; } ;
struct TYPE_6__ {int priv_flags; } ;


 void* GENMASK (int,int) ;
 int IFF_UNICAST_FLT ;
 int XGMAC_CONFIG_SS_10000 ;
 int XGMAC_CONFIG_SS_1000_GMII ;
 int XGMAC_CONFIG_SS_100_MII ;
 int XGMAC_CONFIG_SS_10_MII ;
 int XGMAC_CONFIG_SS_2500 ;
 int XGMAC_CONFIG_SS_2500_GMII ;
 int XGMAC_CONFIG_SS_5000 ;
 int XGMAC_CONFIG_SS_MASK ;
 int XGMAC_MDIO_ADDR ;
 int XGMAC_MDIO_DATA ;
 int dev_info (int ,char*) ;
 scalar_t__ ilog2 (scalar_t__) ;

int dwxgmac2_setup(struct stmmac_priv *priv)
{
 struct mac_device_info *mac = priv->hw;

 dev_info(priv->device, "\tXGMAC2\n");

 priv->dev->priv_flags |= IFF_UNICAST_FLT;
 mac->pcsr = priv->ioaddr;
 mac->multicast_filter_bins = priv->plat->multicast_filter_bins;
 mac->unicast_filter_entries = priv->plat->unicast_filter_entries;
 mac->mcast_bits_log2 = 0;

 if (mac->multicast_filter_bins)
  mac->mcast_bits_log2 = ilog2(mac->multicast_filter_bins);

 mac->link.duplex = 0;
 mac->link.speed10 = XGMAC_CONFIG_SS_10_MII;
 mac->link.speed100 = XGMAC_CONFIG_SS_100_MII;
 mac->link.speed1000 = XGMAC_CONFIG_SS_1000_GMII;
 mac->link.speed2500 = XGMAC_CONFIG_SS_2500_GMII;
 mac->link.xgmii.speed2500 = XGMAC_CONFIG_SS_2500;
 mac->link.xgmii.speed5000 = XGMAC_CONFIG_SS_5000;
 mac->link.xgmii.speed10000 = XGMAC_CONFIG_SS_10000;
 mac->link.speed_mask = XGMAC_CONFIG_SS_MASK;

 mac->mii.addr = XGMAC_MDIO_ADDR;
 mac->mii.data = XGMAC_MDIO_DATA;
 mac->mii.addr_shift = 16;
 mac->mii.addr_mask = GENMASK(20, 16);
 mac->mii.reg_shift = 0;
 mac->mii.reg_mask = GENMASK(15, 0);
 mac->mii.clk_csr_shift = 19;
 mac->mii.clk_csr_mask = GENMASK(21, 19);

 return 0;
}
