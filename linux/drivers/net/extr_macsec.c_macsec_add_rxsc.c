
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int active; } ;
struct macsec_rx_sc {int active; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef int sci_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 size_t MACSEC_RXSC_ATTR_ACTIVE ;
 int MACSEC_RXSC_ATTR_MAX ;
 size_t MACSEC_RXSC_ATTR_SCI ;
 int MACSEC_UNDEF_SCI ;
 int PTR_ERR (struct net_device*) ;
 struct net_device* create_rx_sc (struct net_device*,int ) ;
 int genl_info_net (struct genl_info*) ;
 struct net_device* get_dev_from_nl (int ,struct nlattr**) ;
 int nla_get_sci (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 scalar_t__ parse_rxsc_config (struct nlattr**,struct nlattr**) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int validate_add_rxsc (struct nlattr**) ;

__attribute__((used)) static int macsec_add_rxsc(struct sk_buff *skb, struct genl_info *info)
{
 struct net_device *dev;
 sci_t sci = MACSEC_UNDEF_SCI;
 struct nlattr **attrs = info->attrs;
 struct macsec_rx_sc *rx_sc;
 struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_rxsc_config(attrs, tb_rxsc))
  return -EINVAL;

 if (!validate_add_rxsc(tb_rxsc))
  return -EINVAL;

 rtnl_lock();
 dev = get_dev_from_nl(genl_info_net(info), attrs);
 if (IS_ERR(dev)) {
  rtnl_unlock();
  return PTR_ERR(dev);
 }

 sci = nla_get_sci(tb_rxsc[MACSEC_RXSC_ATTR_SCI]);

 rx_sc = create_rx_sc(dev, sci);
 if (IS_ERR(rx_sc)) {
  rtnl_unlock();
  return PTR_ERR(rx_sc);
 }

 if (tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE])
  rx_sc->active = !!nla_get_u8(tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]);

 rtnl_unlock();

 return 0;
}
