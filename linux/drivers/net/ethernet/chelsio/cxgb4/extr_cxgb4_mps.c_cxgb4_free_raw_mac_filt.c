
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int cxgb4_mps_ref_dec (struct adapter*,unsigned int) ;
 int t4_free_raw_mac_filt (struct adapter*,unsigned int,int const*,int const*,unsigned int,int ,int ,int) ;

int cxgb4_free_raw_mac_filt(struct adapter *adap,
       unsigned int viid,
       const u8 *addr,
       const u8 *mask,
       unsigned int idx,
       u8 lookup_type,
       u8 port_id,
       bool sleep_ok)
{
 int ret = 0;

 if (!cxgb4_mps_ref_dec(adap, idx))
  ret = t4_free_raw_mac_filt(adap, viid, addr,
        mask, idx, lookup_type,
        port_id, sleep_ok);

 return ret;
}
