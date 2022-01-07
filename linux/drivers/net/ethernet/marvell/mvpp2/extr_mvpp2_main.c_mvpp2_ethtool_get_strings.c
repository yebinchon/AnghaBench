
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int ntxqs; int nrxqs; } ;
struct TYPE_6__ {char* string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 TYPE_1__* mvpp2_ethtool_mib_regs ;
 TYPE_1__* mvpp2_ethtool_port_regs ;
 TYPE_1__* mvpp2_ethtool_rxq_regs ;
 TYPE_1__* mvpp2_ethtool_txq_regs ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int snprintf (int *,int ,char*,int) ;
 int strscpy (int *,char*,int ) ;

__attribute__((used)) static void mvpp2_ethtool_get_strings(struct net_device *netdev, u32 sset,
          u8 *data)
{
 struct mvpp2_port *port = netdev_priv(netdev);
 int i, q;

 if (sset != ETH_SS_STATS)
  return;

 for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_mib_regs); i++) {
  strscpy(data, mvpp2_ethtool_mib_regs[i].string,
   ETH_GSTRING_LEN);
  data += ETH_GSTRING_LEN;
 }

 for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_port_regs); i++) {
  strscpy(data, mvpp2_ethtool_port_regs[i].string,
   ETH_GSTRING_LEN);
  data += ETH_GSTRING_LEN;
 }

 for (q = 0; q < port->ntxqs; q++) {
  for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_txq_regs); i++) {
   snprintf(data, ETH_GSTRING_LEN,
     mvpp2_ethtool_txq_regs[i].string, q);
   data += ETH_GSTRING_LEN;
  }
 }

 for (q = 0; q < port->nrxqs; q++) {
  for (i = 0; i < ARRAY_SIZE(mvpp2_ethtool_rxq_regs); i++) {
   snprintf(data, ETH_GSTRING_LEN,
     mvpp2_ethtool_rxq_regs[i].string,
     q);
   data += ETH_GSTRING_LEN;
  }
 }
}
