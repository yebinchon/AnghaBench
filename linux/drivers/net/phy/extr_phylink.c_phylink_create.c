
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_mac_ops {int dummy; } ;
struct phylink_config {scalar_t__ type; int dev; } ;
struct TYPE_4__ {int an_enabled; int advertising; int duplex; int speed; int pause; scalar_t__ interface; } ;
struct TYPE_3__ {scalar_t__ interface; } ;
struct phylink {scalar_t__ link_an_mode; TYPE_2__ link_config; int supported; int link_poll; int phylink_disable_state; struct phylink_mac_ops const* ops; int link_port; scalar_t__ link_interface; TYPE_1__ phy_state; int dev; int netdev; struct phylink_config* config; int resolve; int state_mutex; } ;
struct fwnode_handle {int dummy; } ;
typedef scalar_t__ phy_interface_t ;


 int DUPLEX_UNKNOWN ;
 int EINVAL ;
 int ENOMEM ;
 struct phylink* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ MLO_AN_FIXED ;
 int MLO_PAUSE_AN ;
 scalar_t__ PHYLINK_DEV ;
 int PHYLINK_DISABLE_STOPPED ;
 scalar_t__ PHYLINK_NETDEV ;
 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int PORT_BNC ;
 int PORT_MII ;
 int SPEED_UNKNOWN ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int __set_bit (int ,int *) ;
 int bitmap_fill (int ,int ) ;
 int kfree (struct phylink*) ;
 struct phylink* kzalloc (int,int ) ;
 int linkmode_copy (int ,int ) ;
 int mutex_init (int *) ;
 int phylink_fixed_poll ;
 int phylink_parse_fixedlink (struct phylink*,struct fwnode_handle*) ;
 int phylink_parse_mode (struct phylink*,struct fwnode_handle*) ;
 int phylink_register_sfp (struct phylink*,struct fwnode_handle*) ;
 int phylink_resolve ;
 int phylink_validate (struct phylink*,int ,TYPE_2__*) ;
 int timer_setup (int *,int ,int ) ;
 int to_net_dev (int ) ;

struct phylink *phylink_create(struct phylink_config *config,
          struct fwnode_handle *fwnode,
          phy_interface_t iface,
          const struct phylink_mac_ops *ops)
{
 struct phylink *pl;
 int ret;

 pl = kzalloc(sizeof(*pl), GFP_KERNEL);
 if (!pl)
  return ERR_PTR(-ENOMEM);

 mutex_init(&pl->state_mutex);
 INIT_WORK(&pl->resolve, phylink_resolve);

 pl->config = config;
 if (config->type == PHYLINK_NETDEV) {
  pl->netdev = to_net_dev(config->dev);
 } else if (config->type == PHYLINK_DEV) {
  pl->dev = config->dev;
 } else {
  kfree(pl);
  return ERR_PTR(-EINVAL);
 }

 pl->phy_state.interface = iface;
 pl->link_interface = iface;
 if (iface == PHY_INTERFACE_MODE_MOCA)
  pl->link_port = PORT_BNC;
 else
  pl->link_port = PORT_MII;
 pl->link_config.interface = iface;
 pl->link_config.pause = MLO_PAUSE_AN;
 pl->link_config.speed = SPEED_UNKNOWN;
 pl->link_config.duplex = DUPLEX_UNKNOWN;
 pl->link_config.an_enabled = 1;
 pl->ops = ops;
 __set_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
 timer_setup(&pl->link_poll, phylink_fixed_poll, 0);

 bitmap_fill(pl->supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
 linkmode_copy(pl->link_config.advertising, pl->supported);
 phylink_validate(pl, pl->supported, &pl->link_config);

 ret = phylink_parse_mode(pl, fwnode);
 if (ret < 0) {
  kfree(pl);
  return ERR_PTR(ret);
 }

 if (pl->link_an_mode == MLO_AN_FIXED) {
  ret = phylink_parse_fixedlink(pl, fwnode);
  if (ret < 0) {
   kfree(pl);
   return ERR_PTR(ret);
  }
 }

 ret = phylink_register_sfp(pl, fwnode);
 if (ret < 0) {
  kfree(pl);
  return ERR_PTR(ret);
 }

 return pl;
}
