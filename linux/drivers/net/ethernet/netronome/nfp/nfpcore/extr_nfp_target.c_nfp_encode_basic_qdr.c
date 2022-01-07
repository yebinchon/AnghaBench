
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int nfp_decode_basic (int ,int*,int,int,int,int,int) ;

__attribute__((used)) static int nfp_encode_basic_qdr(u64 addr, int dest_island, int cpp_tgt,
    int mode, bool addr40, int isld1, int isld0)
{
 int v, ret;


 ret = nfp_decode_basic(addr, &v, cpp_tgt, mode, addr40, isld1, isld0);
 if (ret)
  return ret;


 if (dest_island != -1 && dest_island != v)
  return -EINVAL;


 return 0;
}
