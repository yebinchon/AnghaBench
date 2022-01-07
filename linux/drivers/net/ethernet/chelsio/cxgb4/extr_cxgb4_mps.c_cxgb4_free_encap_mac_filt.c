
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int cxgb4_mps_ref_dec (struct adapter*,int) ;
 int t4_free_encap_mac_filt (struct adapter*,unsigned int,int,int) ;

int cxgb4_free_encap_mac_filt(struct adapter *adap, unsigned int viid,
         int idx, bool sleep_ok)
{
 int ret = 0;

 if (!cxgb4_mps_ref_dec(adap, idx))
  ret = t4_free_encap_mac_filt(adap, viid, idx, sleep_ok);

 return ret;
}
