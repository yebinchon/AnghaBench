
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct adapter {int mbox; } ;


 int ENOMEM ;
 int cxgb4_free_mac_filt (struct adapter*,unsigned int,unsigned int,int const**,int) ;
 scalar_t__ cxgb4_mps_ref_inc (struct adapter*,int const*,int,int *) ;
 int t4_alloc_mac_filt (struct adapter*,int ,unsigned int,int,unsigned int,int const**,int*,int *,int) ;

int cxgb4_alloc_mac_filt(struct adapter *adap, unsigned int viid,
    bool free, unsigned int naddr, const u8 **addr,
    u16 *idx, u64 *hash, bool sleep_ok)
{
 int ret, i;

 ret = t4_alloc_mac_filt(adap, adap->mbox, viid, free,
    naddr, addr, idx, hash, sleep_ok);
 if (ret < 0)
  return ret;

 for (i = 0; i < naddr; i++) {
  if (idx[i] != 0xffff) {
   if (cxgb4_mps_ref_inc(adap, addr[i], idx[i], ((void*)0))) {
    ret = -ENOMEM;
    goto error;
   }
  }
 }

 goto out;
error:
 cxgb4_free_mac_filt(adap, viid, naddr, addr, sleep_ok);

out:

 return ret;
}
