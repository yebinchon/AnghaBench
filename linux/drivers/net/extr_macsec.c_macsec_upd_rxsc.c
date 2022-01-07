
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int n_rx_sc; } ;
struct macsec_rx_sc {int active; } ;
struct genl_info {struct nlattr** attrs; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct macsec_rx_sc*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 size_t MACSEC_RXSC_ATTR_ACTIVE ;
 int MACSEC_RXSC_ATTR_MAX ;
 int PTR_ERR (struct macsec_rx_sc*) ;
 int genl_info_net (struct genl_info*) ;
 struct macsec_rx_sc* get_rxsc_from_nl (int ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**) ;
 int nla_get_u8 (struct nlattr*) ;
 scalar_t__ parse_rxsc_config (struct nlattr**,struct nlattr**) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int validate_add_rxsc (struct nlattr**) ;

__attribute__((used)) static int macsec_upd_rxsc(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **attrs = info->attrs;
 struct net_device *dev;
 struct macsec_secy *secy;
 struct macsec_rx_sc *rx_sc;
 struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_rxsc_config(attrs, tb_rxsc))
  return -EINVAL;

 if (!validate_add_rxsc(tb_rxsc))
  return -EINVAL;

 rtnl_lock();
 rx_sc = get_rxsc_from_nl(genl_info_net(info), attrs, tb_rxsc, &dev, &secy);
 if (IS_ERR(rx_sc)) {
  rtnl_unlock();
  return PTR_ERR(rx_sc);
 }

 if (tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]) {
  bool new = !!nla_get_u8(tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]);

  if (rx_sc->active != new)
   secy->n_rx_sc += new ? 1 : -1;

  rx_sc->active = new;
 }

 rtnl_unlock();

 return 0;
}
