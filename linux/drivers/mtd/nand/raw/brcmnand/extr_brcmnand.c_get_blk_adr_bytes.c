
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ALIGN (scalar_t__,int) ;
 scalar_t__ ilog2 (int ) ;

__attribute__((used)) static inline int get_blk_adr_bytes(u64 size, u32 writesize)
{
 return ALIGN(ilog2(size) - ilog2(writesize), 8) >> 3;
}
