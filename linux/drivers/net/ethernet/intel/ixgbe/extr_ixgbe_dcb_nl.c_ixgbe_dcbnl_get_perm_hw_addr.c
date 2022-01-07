
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int addr_len; } ;
struct TYPE_3__ {int type; int * san_addr; int * perm_addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 int MAX_ADDR_LEN ;



 int memset (int *,int,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_dcbnl_get_perm_hw_addr(struct net_device *netdev,
      u8 *perm_addr)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 int i, j;

 memset(perm_addr, 0xff, MAX_ADDR_LEN);

 for (i = 0; i < netdev->addr_len; i++)
  perm_addr[i] = adapter->hw.mac.perm_addr[i];

 switch (adapter->hw.mac.type) {
 case 130:
 case 129:
 case 128:
  for (j = 0; j < netdev->addr_len; j++, i++)
   perm_addr[i] = adapter->hw.mac.san_addr[j];
  break;
 default:
  break;
 }
}
