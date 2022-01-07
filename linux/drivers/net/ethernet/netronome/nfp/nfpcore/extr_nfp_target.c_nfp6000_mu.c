
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int nfp6000_mu_ctm (int ) ;
 int nfp6000_mu_emu (int ) ;
 int nfp6000_mu_imu (int ) ;

__attribute__((used)) static int nfp6000_mu(u32 cpp_id, u64 address)
{
 int pp;

 if (address < 0x2000000000ULL)
  pp = nfp6000_mu_ctm(cpp_id);
 else if (address < 0x8000000000ULL)
  pp = nfp6000_mu_emu(cpp_id);
 else if (address < 0x9800000000ULL)
  pp = nfp6000_mu_ctm(cpp_id);
 else if (address < 0x9C00000000ULL)
  pp = nfp6000_mu_emu(cpp_id);
 else if (address < 0xA000000000ULL)
  pp = nfp6000_mu_imu(cpp_id);
 else
  pp = nfp6000_mu_ctm(cpp_id);

 return pp;
}
