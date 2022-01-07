
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int ,int ,int ) ;
 int EINVAL ;
 int NFP_CPP_ACTION_RW ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P64 ;

__attribute__((used)) static int nfp6000_nbi_ppc(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(0, 0, 0, P64);
 AT(1, 0, P64, 0);
 AT(NFP_CPP_ACTION_RW, 0, P64, P64);
 default:
  return -EINVAL;
 }
}
