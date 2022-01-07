
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct myri10ge_priv {char* product_code_string; } ;
struct TYPE_2__ {int port; int duplex; int speed; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int FIBRE ;
 int PORT_FIBRE ;
 int PORT_OTHER ;
 int SPEED_10000 ;
 int advertising ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 char* strchr (char*,char) ;
 int supported ;

__attribute__((used)) static int
myri10ge_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 char *ptr;
 int i;

 cmd->base.autoneg = AUTONEG_DISABLE;
 cmd->base.speed = SPEED_10000;
 cmd->base.duplex = DUPLEX_FULL;







 ptr = mgp->product_code_string;
 if (ptr == ((void*)0)) {
  netdev_err(netdev, "Missing product code\n");
  return 0;
 }
 for (i = 0; i < 3; i++, ptr++) {
  ptr = strchr(ptr, '-');
  if (ptr == ((void*)0)) {
   netdev_err(netdev, "Invalid product code %s\n",
       mgp->product_code_string);
   return 0;
  }
 }
 if (*ptr == '2')
  ptr++;
 if (*ptr == 'R' || *ptr == 'Q' || *ptr == 'S') {

  cmd->base.port = PORT_FIBRE;
  ethtool_link_ksettings_add_link_mode(cmd, supported, FIBRE);
  ethtool_link_ksettings_add_link_mode(cmd, advertising, FIBRE);
 } else {
  cmd->base.port = PORT_OTHER;
 }

 return 0;
}
