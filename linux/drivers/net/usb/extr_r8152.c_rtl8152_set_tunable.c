
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int napi; int rx_copybreak; } ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;
 int EOPNOTSUPP ;

 int ETH_ZLEN ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int netif_err (struct r8152*,int ,struct net_device*,char*) ;
 int rx_err ;

__attribute__((used)) static int rtl8152_set_tunable(struct net_device *netdev,
          const struct ethtool_tunable *tunable,
          const void *d)
{
 struct r8152 *tp = netdev_priv(netdev);
 u32 val;

 switch (tunable->id) {
 case 128:
  val = *(u32 *)d;
  if (val < ETH_ZLEN) {
   netif_err(tp, rx_err, netdev,
      "Invalid rx copy break value\n");
   return -EINVAL;
  }

  if (tp->rx_copybreak != val) {
   napi_disable(&tp->napi);
   tp->rx_copybreak = val;
   napi_enable(&tp->napi);
  }
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
