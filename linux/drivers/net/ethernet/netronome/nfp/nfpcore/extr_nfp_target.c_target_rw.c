
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT (int,int ,int,int) ;
 int EINVAL ;
 int NFP_CPP_ACTION_RW ;
 int NFP_CPP_ID (int ,int ,int ) ;

__attribute__((used)) static int target_rw(u32 cpp_id, int pp, int start, int len)
{
 switch (cpp_id & NFP_CPP_ID(0, ~0, ~0)) {
 AT(0, 0, 0, pp);
 AT(1, 0, pp, 0);
 AT(NFP_CPP_ACTION_RW, 0, pp, pp);
 default:
  return -EINVAL;
 }
}
