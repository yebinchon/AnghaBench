
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int,int ,int ) ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P32 ;
 int target_rw (int,int ,int ,int) ;

__attribute__((used)) static int nfp6000_cls(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(0, 3, P32, 0);
 AT(2, 0, P32, 0);
 AT(2, 1, P32, 0);
 AT(4, 0, P32, 0);
 AT(4, 1, P32, 0);
 AT(6, 0, P32, 0);
 AT(6, 1, P32, 0);
 AT(6, 2, P32, 0);
 AT(8, 2, P32, 0);
 AT(8, 3, P32, 0);
 AT(9, 0, 0, P32);
 AT(9, 1, 0, P32);
 AT(9, 2, 0, P32);
 AT(9, 3, 0, P32);
 AT(10, 0, P32, 0);
 AT(10, 2, P32, 0);
 AT(14, 0, P32, 0);
 AT(15, 1, 0, P32);
 AT(17, 2, P32, 0);
 AT(24, 0, 0, P32);
 AT(24, 1, P32, 0);
 AT(25, 0, 0, P32);
 AT(25, 1, P32, 0);
 default:
  return target_rw(cpp_id, P32, 0, 64);
 }
}
