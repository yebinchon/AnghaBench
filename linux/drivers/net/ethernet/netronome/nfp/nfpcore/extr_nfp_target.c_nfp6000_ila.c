
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int,int ,int ) ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P32 ;
 int target_rw (int,int ,int,int) ;

__attribute__((used)) static int nfp6000_ila(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(0, 1, 0, P32);
 AT(2, 0, 0, P32);
 AT(3, 0, P32, 0);
 default:
  return target_rw(cpp_id, P32, 48, 4);
 }
}
