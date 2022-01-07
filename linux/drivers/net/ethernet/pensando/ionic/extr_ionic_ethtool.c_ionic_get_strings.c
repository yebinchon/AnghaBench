
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int dummy; } ;


 int ETH_GSTRING_LEN ;


 int PRIV_FLAGS_COUNT ;
 int ionic_get_stats_strings (struct ionic_lif*,int *) ;
 int ionic_priv_flags_strings ;
 int memcpy (int *,int ,int) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ionic_get_strings(struct net_device *netdev,
         u32 sset, u8 *buf)
{
 struct ionic_lif *lif = netdev_priv(netdev);

 switch (sset) {
 case 128:
  ionic_get_stats_strings(lif, buf);
  break;
 case 129:
  memcpy(buf, ionic_priv_flags_strings,
         PRIV_FLAGS_COUNT * ETH_GSTRING_LEN);
  break;
 }
}
