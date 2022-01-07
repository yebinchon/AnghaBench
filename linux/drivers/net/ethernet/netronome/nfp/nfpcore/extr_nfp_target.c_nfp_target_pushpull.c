
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int EINVAL ;
 int NFP_CPP_ID_TARGET_of (int ) ;
 int P32 ;
 int P64 ;
 int nfp6000_cap_xpb (int ) ;
 int nfp6000_cls (int ) ;
 int nfp6000_crypto (int ) ;
 int nfp6000_ila (int ) ;
 int nfp6000_mu (int ,int) ;
 int nfp6000_nbi (int ,int) ;
 int nfp6000_pci (int ) ;
 int target_rw (int ,int ,int,int) ;

int nfp_target_pushpull(u32 cpp_id, u64 address)
{
 switch (NFP_CPP_ID_TARGET_of(cpp_id)) {
 case 130:
  return nfp6000_nbi(cpp_id, address);
 case 128:
  return target_rw(cpp_id, P32, 24, 4);
 case 132:
  return nfp6000_ila(cpp_id);
 case 131:
  return nfp6000_mu(cpp_id, address);
 case 129:
  return nfp6000_pci(cpp_id);
 case 136:
  if (address < 0x10000)
   return target_rw(cpp_id, P64, 1, 1);
  else
   return target_rw(cpp_id, P32, 1, 1);
 case 134:
  return nfp6000_crypto(cpp_id);
 case 133:
  return nfp6000_cap_xpb(cpp_id);
 case 135:
  return nfp6000_cls(cpp_id);
 case 0:
  return target_rw(cpp_id, P32, 4, 4);
 default:
  return -EINVAL;
 }
}
