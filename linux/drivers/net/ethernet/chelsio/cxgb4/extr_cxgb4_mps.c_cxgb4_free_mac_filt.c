
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int mbox; } ;


 int cxgb4_mps_ref_dec_by_mac (struct adapter*,int const*,int *) ;
 int t4_free_mac_filt (struct adapter*,int ,unsigned int,int,int const**,int) ;

int cxgb4_free_mac_filt(struct adapter *adap, unsigned int viid,
   unsigned int naddr, const u8 **addr, bool sleep_ok)
{
 int ret, i;

 for (i = 0; i < naddr; i++) {
  if (!cxgb4_mps_ref_dec_by_mac(adap, addr[i], ((void*)0))) {
   ret = t4_free_mac_filt(adap, adap->mbox, viid,
            1, &addr[i], sleep_ok);
   if (ret < 0)
    return ret;
  }
 }


 return naddr;
}
