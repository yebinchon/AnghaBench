
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {int * sa; } ;
struct macsec_tx_sa {scalar_t__ active; } ;
struct macsec_secy {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct macsec_tx_sa*) ;
 size_t MACSEC_ATTR_IFINDEX ;
 int MACSEC_SA_ATTR_MAX ;
 int PTR_ERR (struct macsec_tx_sa*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int clear_tx_sa (struct macsec_tx_sa*) ;
 int genl_info_net (struct genl_info*) ;
 struct macsec_tx_sa* get_txsa_from_nl (int ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**,struct macsec_tx_sc**,size_t*) ;
 scalar_t__ parse_sa_config (struct nlattr**,struct nlattr**) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int macsec_del_txsa(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **attrs = info->attrs;
 struct net_device *dev;
 struct macsec_secy *secy;
 struct macsec_tx_sc *tx_sc;
 struct macsec_tx_sa *tx_sa;
 u8 assoc_num;
 struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];

 if (!attrs[MACSEC_ATTR_IFINDEX])
  return -EINVAL;

 if (parse_sa_config(attrs, tb_sa))
  return -EINVAL;

 rtnl_lock();
 tx_sa = get_txsa_from_nl(genl_info_net(info), attrs, tb_sa,
     &dev, &secy, &tx_sc, &assoc_num);
 if (IS_ERR(tx_sa)) {
  rtnl_unlock();
  return PTR_ERR(tx_sa);
 }

 if (tx_sa->active) {
  rtnl_unlock();
  return -EBUSY;
 }

 RCU_INIT_POINTER(tx_sc->sa[assoc_num], ((void*)0));
 clear_tx_sa(tx_sa);

 rtnl_unlock();

 return 0;
}
