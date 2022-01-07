
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; int * dev; } ;
struct stmmac_priv {struct phylink* phylink; TYPE_3__ phylink_config; TYPE_1__* dev; TYPE_2__* plat; } ;
struct phylink {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_5__ {int phy_interface; int phylink_node; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ IS_ERR (struct phylink*) ;
 int PHYLINK_NETDEV ;
 int PTR_ERR (struct phylink*) ;
 struct fwnode_handle* of_fwnode_handle (int ) ;
 struct phylink* phylink_create (TYPE_3__*,struct fwnode_handle*,int,int *) ;
 int stmmac_phylink_mac_ops ;

__attribute__((used)) static int stmmac_phy_setup(struct stmmac_priv *priv)
{
 struct fwnode_handle *fwnode = of_fwnode_handle(priv->plat->phylink_node);
 int mode = priv->plat->phy_interface;
 struct phylink *phylink;

 priv->phylink_config.dev = &priv->dev->dev;
 priv->phylink_config.type = PHYLINK_NETDEV;

 phylink = phylink_create(&priv->phylink_config, fwnode,
     mode, &stmmac_phylink_mac_ops);
 if (IS_ERR(phylink))
  return PTR_ERR(phylink);

 priv->phylink = phylink;
 return 0;
}
