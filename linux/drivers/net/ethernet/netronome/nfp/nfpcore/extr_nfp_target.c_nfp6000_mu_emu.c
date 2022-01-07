
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int,int ,int ) ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P32 ;
 int nfp6000_mu_common (int) ;

__attribute__((used)) static int nfp6000_mu_emu(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(18, 0, 0, P32);
 AT(18, 1, 0, P32);
 AT(18, 2, P32, 0);
 AT(18, 3, P32, 0);
 AT(20, 2, P32, 0);
 AT(21, 0, 0, P32);
 AT(21, 1, 0, P32);
 AT(21, 2, 0, P32);
 AT(22, 0, 0, P32);
 AT(22, 1, 0, P32);
 AT(22, 2, 0, P32);
 default:
  return nfp6000_mu_common(cpp_id);
 }
}
