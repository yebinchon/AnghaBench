
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {scalar_t__ duplex; int link; int an_complete; int advertising; void* speed; int pause; } ;
struct phylink {TYPE_1__ link_config; int supported; struct gpio_desc* link_gpio; } ;
struct phy_setting {int bit; } ;
struct gpio_desc {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int ARRAY_SIZE (void**) ;
 int Asym_Pause ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int EPROBE_DEFER ;
 struct gpio_desc* ERR_PTR (int) ;
 int GPIOD_IN ;
 int IS_ERR (struct gpio_desc*) ;
 int MII ;
 int MLO_PAUSE_ASYM ;
 int MLO_PAUSE_SYM ;
 int Pause ;
 void* SPEED_1000 ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int __set_bit (int ,int ) ;
 int bitmap_fill (int ,int ) ;
 struct fwnode_handle* fwnode_get_named_child_node (struct fwnode_handle*,char*) ;
 struct gpio_desc* fwnode_get_named_gpiod (struct fwnode_handle*,char*,int ,int ,char*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 scalar_t__ fwnode_property_read_bool (struct fwnode_handle*,char*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,void**) ;
 int fwnode_property_read_u32_array (struct fwnode_handle*,char*,void**,int) ;
 int linkmode_and (int ,int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int linkmode_zero (int ) ;
 struct phy_setting* phy_lookup_setting (void*,scalar_t__,int ,int) ;
 int phylink_err (struct phylink*,char*) ;
 int phylink_set (int ,int ) ;
 int phylink_validate (struct phylink*,int ,TYPE_1__*) ;
 int phylink_warn (struct phylink*,char*,char*,...) ;

__attribute__((used)) static int phylink_parse_fixedlink(struct phylink *pl,
       struct fwnode_handle *fwnode)
{
 struct fwnode_handle *fixed_node;
 const struct phy_setting *s;
 struct gpio_desc *desc;
 u32 speed;
 int ret;

 fixed_node = fwnode_get_named_child_node(fwnode, "fixed-link");
 if (fixed_node) {
  ret = fwnode_property_read_u32(fixed_node, "speed", &speed);

  pl->link_config.speed = speed;
  pl->link_config.duplex = DUPLEX_HALF;

  if (fwnode_property_read_bool(fixed_node, "full-duplex"))
   pl->link_config.duplex = DUPLEX_FULL;



  if (fwnode_property_read_bool(fixed_node, "pause"))
   pl->link_config.pause |= MLO_PAUSE_SYM;
  if (fwnode_property_read_bool(fixed_node, "asym-pause"))
   pl->link_config.pause |= MLO_PAUSE_ASYM;

  if (ret == 0) {
   desc = fwnode_get_named_gpiod(fixed_node, "link-gpios",
            0, GPIOD_IN, "?");

   if (!IS_ERR(desc))
    pl->link_gpio = desc;
   else if (desc == ERR_PTR(-EPROBE_DEFER))
    ret = -EPROBE_DEFER;
  }
  fwnode_handle_put(fixed_node);

  if (ret)
   return ret;
 } else {
  u32 prop[5];

  ret = fwnode_property_read_u32_array(fwnode, "fixed-link",
           ((void*)0), 0);
  if (ret != ARRAY_SIZE(prop)) {
   phylink_err(pl, "broken fixed-link?\n");
   return -EINVAL;
  }

  ret = fwnode_property_read_u32_array(fwnode, "fixed-link",
           prop, ARRAY_SIZE(prop));
  if (!ret) {
   pl->link_config.duplex = prop[1] ?
      DUPLEX_FULL : DUPLEX_HALF;
   pl->link_config.speed = prop[2];
   if (prop[3])
    pl->link_config.pause |= MLO_PAUSE_SYM;
   if (prop[4])
    pl->link_config.pause |= MLO_PAUSE_ASYM;
  }
 }

 if (pl->link_config.speed > SPEED_1000 &&
     pl->link_config.duplex != DUPLEX_FULL)
  phylink_warn(pl, "fixed link specifies half duplex for %dMbps link?\n",
        pl->link_config.speed);

 bitmap_fill(pl->supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
 linkmode_copy(pl->link_config.advertising, pl->supported);
 phylink_validate(pl, pl->supported, &pl->link_config);

 s = phy_lookup_setting(pl->link_config.speed, pl->link_config.duplex,
          pl->supported, 1);
 linkmode_zero(pl->supported);
 phylink_set(pl->supported, MII);
 phylink_set(pl->supported, Pause);
 phylink_set(pl->supported, Asym_Pause);
 if (s) {
  __set_bit(s->bit, pl->supported);
 } else {
  phylink_warn(pl, "fixed link %s duplex %dMbps not recognised\n",
        pl->link_config.duplex == DUPLEX_FULL ? "full" : "half",
        pl->link_config.speed);
 }

 linkmode_and(pl->link_config.advertising, pl->link_config.advertising,
       pl->supported);

 pl->link_config.link = 1;
 pl->link_config.an_complete = 1;

 return 0;
}
