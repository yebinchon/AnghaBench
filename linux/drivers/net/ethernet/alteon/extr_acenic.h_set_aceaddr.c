
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int dma_addr_t ;
struct TYPE_3__ {int addrlo; int addrhi; } ;
typedef TYPE_1__ aceaddr ;


 int wmb () ;

__attribute__((used)) static inline void set_aceaddr(aceaddr *aa, dma_addr_t addr)
{
 u64 baddr = (u64) addr;
 aa->addrlo = baddr & 0xffffffff;
 aa->addrhi = baddr >> 32;
 wmb();
}
