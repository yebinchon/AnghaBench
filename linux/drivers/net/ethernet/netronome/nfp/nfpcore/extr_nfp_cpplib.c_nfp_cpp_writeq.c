
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int tmp ;
struct nfp_cpp {int dummy; } ;


 int EIO ;
 int nfp_cpp_write (struct nfp_cpp*,int ,unsigned long long,int *,int) ;
 int put_unaligned_le64 (int ,int *) ;

int nfp_cpp_writeq(struct nfp_cpp *cpp, u32 cpp_id,
     unsigned long long address, u64 value)
{
 u8 tmp[8];
 int n;

 put_unaligned_le64(value, tmp);
 n = nfp_cpp_write(cpp, cpp_id, address, tmp, sizeof(tmp));

 return n == sizeof(tmp) ? 0 : n < 0 ? n : -EIO;
}
