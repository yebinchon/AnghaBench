
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ksz_desc {TYPE_1__* phw; } ;
struct TYPE_2__ {int addr; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_tx_buf(struct ksz_desc *desc, u32 addr)
{
 desc->phw->addr = cpu_to_le32(addr);
}
