
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int,int ,int ) ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P32 ;
 int P64 ;
 int nfp6000_mu_common (int) ;

__attribute__((used)) static int nfp6000_mu_ctm(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(16, 1, 0, P32);
 AT(17, 1, 0, P32);
 AT(17, 3, 0, P64);
 AT(18, 2, 0, P64);
 AT(18, 3, 0, P64);
 AT(21, 0, 0, P64);
 AT(21, 1, 0, P64);
 AT(21, 2, 0, P64);
 AT(21, 3, 0, P64);
 default:
  return nfp6000_mu_common(cpp_id);
 }
}
