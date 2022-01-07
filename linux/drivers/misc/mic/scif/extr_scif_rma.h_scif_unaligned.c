
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int L1_CACHE_BYTES ;

__attribute__((used)) static inline bool scif_unaligned(off_t src_offset, off_t dst_offset)
{
 src_offset = src_offset & (L1_CACHE_BYTES - 1);
 dst_offset = dst_offset & (L1_CACHE_BYTES - 1);
 return !(src_offset == dst_offset);
}
