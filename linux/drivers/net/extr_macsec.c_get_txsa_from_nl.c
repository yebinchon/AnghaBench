
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct macsec_tx_sc {int * sa; } ;
struct macsec_tx_sa {int dummy; } ;
struct macsec_secy {struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {struct macsec_secy secy; } ;


 int EINVAL ;
 int ENODEV ;
 struct macsec_tx_sa* ERR_CAST (struct net_device*) ;
 struct macsec_tx_sa* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct net_device*) ;
 size_t MACSEC_NUM_AN ;
 size_t MACSEC_SA_ATTR_AN ;
 struct net_device* get_dev_from_nl (struct net*,struct nlattr**) ;
 TYPE_1__* macsec_priv (struct net_device*) ;
 size_t nla_get_u8 (struct nlattr*) ;
 struct macsec_tx_sa* rtnl_dereference (int ) ;

__attribute__((used)) static struct macsec_tx_sa *get_txsa_from_nl(struct net *net,
          struct nlattr **attrs,
          struct nlattr **tb_sa,
          struct net_device **devp,
          struct macsec_secy **secyp,
          struct macsec_tx_sc **scp,
          u8 *assoc_num)
{
 struct net_device *dev;
 struct macsec_secy *secy;
 struct macsec_tx_sc *tx_sc;
 struct macsec_tx_sa *tx_sa;

 if (!tb_sa[MACSEC_SA_ATTR_AN])
  return ERR_PTR(-EINVAL);

 *assoc_num = nla_get_u8(tb_sa[MACSEC_SA_ATTR_AN]);

 dev = get_dev_from_nl(net, attrs);
 if (IS_ERR(dev))
  return ERR_CAST(dev);

 if (*assoc_num >= MACSEC_NUM_AN)
  return ERR_PTR(-EINVAL);

 secy = &macsec_priv(dev)->secy;
 tx_sc = &secy->tx_sc;

 tx_sa = rtnl_dereference(tx_sc->sa[*assoc_num]);
 if (!tx_sa)
  return ERR_PTR(-ENODEV);

 *devp = dev;
 *scp = tx_sc;
 *secyp = secy;
 return tx_sa;
}
