
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_SIZE ;

__attribute__((used)) static inline unsigned long gru_chiplet_paddr(unsigned long paddr, int pnode,
       int chiplet)
{
 return paddr + GRU_SIZE * (2 * pnode + chiplet);
}
