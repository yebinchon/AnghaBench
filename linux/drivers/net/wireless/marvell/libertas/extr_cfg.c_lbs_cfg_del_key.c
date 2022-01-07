
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__* wep_key_len; } ;


 int lbs_deb_assoc (char*,int,int const*) ;
 int lbs_set_wep_keys (struct lbs_private*) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_del_key(struct wiphy *wiphy, struct net_device *netdev,
      u8 key_index, bool pairwise, const u8 *mac_addr)
{

 lbs_deb_assoc("del_key: key_idx %d, mac_addr %pM\n",
        key_index, mac_addr);
 return 0;
}
