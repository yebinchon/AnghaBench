
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ring_cookie; int location; } ;
struct ethtool_rxnfc {TYPE_1__ fs; } ;
struct bcm_sysport_priv {int dummy; } ;


 int EOPNOTSUPP ;
 int RX_CLS_FLOW_WAKE ;
 int bcm_sysport_rule_find (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static int bcm_sysport_rule_get(struct bcm_sysport_priv *priv,
    struct ethtool_rxnfc *nfc)
{
 int index;


 index = bcm_sysport_rule_find(priv, nfc->fs.location);
 if (index < 0)
  return -EOPNOTSUPP;

 nfc->fs.ring_cookie = RX_CLS_FLOW_WAKE;

 return 0;
}
