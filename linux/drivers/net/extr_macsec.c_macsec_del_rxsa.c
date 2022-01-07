
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int * sa; } ;
struct macsec_rx_sa {scalar_t__ active; } ;
struct genl_info {struct nlattr** attrs; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct macsec_rx_sa*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 int MACSEC_RXSC_ATTR_MAX ;
 int MACSEC_SA_ATTR_MAX ;
 int PTR_ERR (struct macsec_rx_sa*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int clear_rx_sa (struct macsec_rx_sa*) ;
 int genl_info_net (struct genl_info*) ;
 struct macsec_rx_sa* get_rxsa_from_nl (int ,struct nlattr**,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**,struct macsec_rx_sc**,size_t*) ;
 scalar_t__ parse_rxsc_config (struct nlattr**,struct nlattr**) ;
 scalar_t__ parse_sa_config (struct nlattr**,struct nlattr**) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int macsec_del_rxsa(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **attrs = info->attrs;
 struct net_device *dev;
 struct macsec_secy *secy;
 struct macsec_rx_sc *rx_sc;
 struct macsec_rx_sa *rx_sa;
 u8 assoc_num;
 struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];
 struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_sa_config(attrs, tb_sa))
  return -EINVAL;

 if (parse_rxsc_config(attrs, tb_rxsc))
  return -EINVAL;

 rtnl_lock();
 rx_sa = get_rxsa_from_nl(genl_info_net(info), attrs, tb_rxsc, tb_sa,
     &dev, &secy, &rx_sc, &assoc_num);
 if (IS_ERR(rx_sa)) {
  rtnl_unlock();
  return PTR_ERR(rx_sa);
 }

 if (rx_sa->active) {
  rtnl_unlock();
  return -EBUSY;
 }

 RCU_INIT_POINTER(rx_sc->sa[assoc_num], ((void*)0));
 clear_rx_sa(rx_sa);

 rtnl_unlock();

 return 0;
}
