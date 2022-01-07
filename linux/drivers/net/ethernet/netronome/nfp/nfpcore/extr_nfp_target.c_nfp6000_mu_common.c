
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int,int ,int ) ;
 int EINVAL ;
 int NFP_CPP_ACTION_RW ;
 int NFP_CPP_ID (int ,int ,int ) ;
 int P32 ;
 int P64 ;

__attribute__((used)) static int nfp6000_mu_common(u32 cpp_id)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(NFP_CPP_ACTION_RW, 0, P64, P64);
 AT(NFP_CPP_ACTION_RW, 1, P64, P64);
 AT(NFP_CPP_ACTION_RW, 2, P64, P64);
 AT(NFP_CPP_ACTION_RW, 3, P64, P64);
 AT(0, 0, 0, P64);
 AT(0, 1, 0, P64);
 AT(0, 2, 0, P64);
 AT(0, 3, 0, P64);
 AT(1, 0, P64, 0);
 AT(1, 1, P64, 0);
 AT(1, 2, P64, 0);
 AT(1, 3, P64, 0);
 AT(3, 0, 0, P32);
 AT(3, 2, P32, 0);
 AT(4, 0, P32, 0);
 AT(4, 2, 0, 0);
 AT(4, 3, 0, P32);
 AT(5, 0, P32, 0);
 AT(5, 3, 0, P32);
 AT(6, 0, P32, 0);
 AT(6, 3, 0, P32);
 AT(7, 0, P32, 0);
 AT(7, 3, 0, P32);
 AT(8, 0, P32, 0);
 AT(8, 3, 0, P32);
 AT(9, 0, P32, 0);
 AT(9, 3, 0, P32);
 AT(10, 0, P32, 0);
 AT(10, 3, 0, P32);
 AT(13, 0, 0, P32);
 AT(13, 1, 0, P32);
 AT(13, 2, P32, 0);
 AT(15, 0, P32, 0);
 AT(15, 3, 0, P32);
 AT(28, 0, 0, P32);
 AT(28, 1, 0, P32);
 AT(28, 2, 0, P32);
 AT(28, 3, 0, P32);
 AT(31, 0, P32, 0);
 AT(31, 1, P32, 0);
 AT(31, 2, P32, 0);
 AT(31, 3, P32, 0);
 default:
  return -EINVAL;
 }
}
