
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int ENOMEM ;
 scalar_t__ cxgb4_mps_ref_inc (struct adapter*,int const*,int,int const*) ;
 int t4_alloc_encap_mac_filt (struct adapter*,unsigned int,int const*,int const*,unsigned int,unsigned int,int ,int ,int) ;
 int t4_free_encap_mac_filt (struct adapter*,unsigned int,int,int) ;

int cxgb4_alloc_encap_mac_filt(struct adapter *adap, unsigned int viid,
          const u8 *addr, const u8 *mask,
          unsigned int vni, unsigned int vni_mask,
          u8 dip_hit, u8 lookup_type, bool sleep_ok)
{
 int ret;

 ret = t4_alloc_encap_mac_filt(adap, viid, addr, mask, vni, vni_mask,
          dip_hit, lookup_type, sleep_ok);
 if (ret < 0)
  return ret;

 if (cxgb4_mps_ref_inc(adap, addr, ret, mask)) {
  ret = -ENOMEM;
  t4_free_encap_mac_filt(adap, viid, ret, sleep_ok);
 }
 return ret;
}
