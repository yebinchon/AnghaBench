
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {scalar_t__ key_len; int icv_len; } ;
struct macsec_rx_sc {int * sa; } ;
struct TYPE_2__ {int id; } ;
struct macsec_rx_sa {int active; struct macsec_rx_sc* sc; TYPE_1__ key; int lock; int next_pn; } ;
struct genl_info {struct nlattr** attrs; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct macsec_rx_sc*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 int MACSEC_KEYID_LEN ;
 int MACSEC_RXSC_ATTR_MAX ;
 size_t MACSEC_SA_ATTR_ACTIVE ;
 size_t MACSEC_SA_ATTR_AN ;
 size_t MACSEC_SA_ATTR_KEY ;
 size_t MACSEC_SA_ATTR_KEYID ;
 int MACSEC_SA_ATTR_MAX ;
 size_t MACSEC_SA_ATTR_PN ;
 int PTR_ERR (struct macsec_rx_sc*) ;
 int genl_info_net (struct genl_info*) ;
 struct macsec_rx_sc* get_rxsc_from_nl (int ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**) ;
 int init_rx_sa (struct macsec_rx_sa*,int ,scalar_t__,int ) ;
 int kfree (struct macsec_rx_sa*) ;
 struct macsec_rx_sa* kmalloc (int,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 unsigned char nla_get_u8 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 int nla_memcpy (int ,struct nlattr*,int ) ;
 scalar_t__ parse_rxsc_config (struct nlattr**,struct nlattr**) ;
 scalar_t__ parse_sa_config (struct nlattr**,struct nlattr**) ;
 int pr_notice (char*,scalar_t__,scalar_t__) ;
 int rcu_assign_pointer (int ,struct macsec_rx_sa*) ;
 struct macsec_rx_sa* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int validate_add_rxsa (struct nlattr**) ;

__attribute__((used)) static int macsec_add_rxsa(struct sk_buff *skb, struct genl_info *info)
{
 struct net_device *dev;
 struct nlattr **attrs = info->attrs;
 struct macsec_secy *secy;
 struct macsec_rx_sc *rx_sc;
 struct macsec_rx_sa *rx_sa;
 unsigned char assoc_num;
 struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];
 struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];
 int err;

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_sa_config(attrs, tb_sa))
  return -EINVAL;

 if (parse_rxsc_config(attrs, tb_rxsc))
  return -EINVAL;

 if (!validate_add_rxsa(tb_sa))
  return -EINVAL;

 rtnl_lock();
 rx_sc = get_rxsc_from_nl(genl_info_net(info), attrs, tb_rxsc, &dev, &secy);
 if (IS_ERR(rx_sc)) {
  rtnl_unlock();
  return PTR_ERR(rx_sc);
 }

 assoc_num = nla_get_u8(tb_sa[MACSEC_SA_ATTR_AN]);

 if (nla_len(tb_sa[MACSEC_SA_ATTR_KEY]) != secy->key_len) {
  pr_notice("macsec: nl: add_rxsa: bad key length: %d != %d\n",
     nla_len(tb_sa[MACSEC_SA_ATTR_KEY]), secy->key_len);
  rtnl_unlock();
  return -EINVAL;
 }

 rx_sa = rtnl_dereference(rx_sc->sa[assoc_num]);
 if (rx_sa) {
  rtnl_unlock();
  return -EBUSY;
 }

 rx_sa = kmalloc(sizeof(*rx_sa), GFP_KERNEL);
 if (!rx_sa) {
  rtnl_unlock();
  return -ENOMEM;
 }

 err = init_rx_sa(rx_sa, nla_data(tb_sa[MACSEC_SA_ATTR_KEY]),
    secy->key_len, secy->icv_len);
 if (err < 0) {
  kfree(rx_sa);
  rtnl_unlock();
  return err;
 }

 if (tb_sa[MACSEC_SA_ATTR_PN]) {
  spin_lock_bh(&rx_sa->lock);
  rx_sa->next_pn = nla_get_u32(tb_sa[MACSEC_SA_ATTR_PN]);
  spin_unlock_bh(&rx_sa->lock);
 }

 if (tb_sa[MACSEC_SA_ATTR_ACTIVE])
  rx_sa->active = !!nla_get_u8(tb_sa[MACSEC_SA_ATTR_ACTIVE]);

 nla_memcpy(rx_sa->key.id, tb_sa[MACSEC_SA_ATTR_KEYID], MACSEC_KEYID_LEN);
 rx_sa->sc = rx_sc;
 rcu_assign_pointer(rx_sc->sa[assoc_num], rx_sa);

 rtnl_unlock();

 return 0;
}
