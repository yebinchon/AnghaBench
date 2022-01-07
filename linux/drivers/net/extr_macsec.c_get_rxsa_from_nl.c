
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int * sa; } ;
struct macsec_rx_sa {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct macsec_rx_sa* ERR_CAST (struct macsec_rx_sc*) ;
 struct macsec_rx_sa* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct macsec_rx_sc*) ;
 size_t MACSEC_NUM_AN ;
 size_t MACSEC_SA_ATTR_AN ;
 struct macsec_rx_sc* get_rxsc_from_nl (struct net*,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**) ;
 size_t nla_get_u8 (struct nlattr*) ;
 struct macsec_rx_sa* rtnl_dereference (int ) ;

__attribute__((used)) static struct macsec_rx_sa *get_rxsa_from_nl(struct net *net,
          struct nlattr **attrs,
          struct nlattr **tb_rxsc,
          struct nlattr **tb_sa,
          struct net_device **devp,
          struct macsec_secy **secyp,
          struct macsec_rx_sc **scp,
          u8 *assoc_num)
{
 struct macsec_rx_sc *rx_sc;
 struct macsec_rx_sa *rx_sa;

 if (!tb_sa[MACSEC_SA_ATTR_AN])
  return ERR_PTR(-EINVAL);

 *assoc_num = nla_get_u8(tb_sa[MACSEC_SA_ATTR_AN]);
 if (*assoc_num >= MACSEC_NUM_AN)
  return ERR_PTR(-EINVAL);

 rx_sc = get_rxsc_from_nl(net, attrs, tb_rxsc, devp, secyp);
 if (IS_ERR(rx_sc))
  return ERR_CAST(rx_sc);

 rx_sa = rtnl_dereference(rx_sc->sa[*assoc_num]);
 if (!rx_sa)
  return ERR_PTR(-ENODEV);

 *scp = rx_sc;
 return rx_sa;
}
