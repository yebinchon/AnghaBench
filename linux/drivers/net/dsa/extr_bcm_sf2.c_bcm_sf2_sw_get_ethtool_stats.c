
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dsa_switch {int dummy; } ;


 int ETH_SS_STATS ;
 int b53_get_ethtool_stats (struct dsa_switch*,int,int *) ;
 int b53_get_sset_count (struct dsa_switch*,int,int ) ;
 int bcm_sf2_cfp_get_ethtool_stats (struct dsa_switch*,int,int *) ;

__attribute__((used)) static void bcm_sf2_sw_get_ethtool_stats(struct dsa_switch *ds, int port,
      uint64_t *data)
{
 int cnt = b53_get_sset_count(ds, port, ETH_SS_STATS);

 b53_get_ethtool_stats(ds, port, data);
 bcm_sf2_cfp_get_ethtool_stats(ds, port, data + cnt);
}
