
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; struct net_device* netdev; } ;
struct net_device {int tx_queue_len; } ;
struct TYPE_2__ {int MODE; } ;


 int DUPLEX_FULL ;
 unsigned long PCH_GBE_MODE_FULL_DUPLEX ;
 unsigned long PCH_GBE_MODE_GMII_ETHER ;
 unsigned long PCH_GBE_MODE_HALF_DUPLEX ;
 unsigned long PCH_GBE_MODE_MII_ETHER ;



 int iowrite32 (unsigned long,int *) ;

__attribute__((used)) static void pch_gbe_set_mode(struct pch_gbe_adapter *adapter, u16 speed,
         u16 duplex)
{
 struct net_device *netdev = adapter->netdev;
 struct pch_gbe_hw *hw = &adapter->hw;
 unsigned long mode = 0;


 switch (speed) {
 case 130:
  mode = PCH_GBE_MODE_MII_ETHER;
  netdev->tx_queue_len = 10;
  break;
 case 129:
  mode = PCH_GBE_MODE_MII_ETHER;
  netdev->tx_queue_len = 100;
  break;
 case 128:
  mode = PCH_GBE_MODE_GMII_ETHER;
  break;
 }
 if (duplex == DUPLEX_FULL)
  mode |= PCH_GBE_MODE_FULL_DUPLEX;
 else
  mode |= PCH_GBE_MODE_HALF_DUPLEX;
 iowrite32(mode, &hw->reg->MODE);
}
