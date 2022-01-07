
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rx_ring_info {scalar_t__ data_addr; } ;


 scalar_t__ ETH_HLEN ;
 int IS_ALIGNED (scalar_t__,int) ;
 unsigned int copybreak ;

__attribute__((used)) static inline bool needs_copy(const struct rx_ring_info *re,
         unsigned length)
{


 if (!IS_ALIGNED(re->data_addr + ETH_HLEN, sizeof(u32)))
  return 1;

 return length < copybreak;
}
