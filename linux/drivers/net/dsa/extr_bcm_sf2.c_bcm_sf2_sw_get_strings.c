
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
struct dsa_switch {int dummy; } ;


 int ETH_GSTRING_LEN ;
 int b53_get_sset_count (struct dsa_switch*,int,int ) ;
 int b53_get_strings (struct dsa_switch*,int,int ,int *) ;
 int bcm_sf2_cfp_get_strings (struct dsa_switch*,int,int ,int *) ;

__attribute__((used)) static void bcm_sf2_sw_get_strings(struct dsa_switch *ds, int port,
       u32 stringset, uint8_t *data)
{
 int cnt = b53_get_sset_count(ds, port, stringset);

 b53_get_strings(ds, port, stringset, data);
 bcm_sf2_cfp_get_strings(ds, port, stringset,
    data + cnt * ETH_GSTRING_LEN);
}
