
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPAA2_ETH_SWA_SIZE ;

__attribute__((used)) static inline void *dpaa2_get_hwa(void *buf_addr, bool swa)
{
 return buf_addr + (swa ? DPAA2_ETH_SWA_SIZE : 0);
}
