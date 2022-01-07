
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nicvf {scalar_t__ reg_base; } ;


 int writeq_relaxed (scalar_t__,scalar_t__) ;

void nicvf_reg_write(struct nicvf *nic, u64 offset, u64 val)
{
 writeq_relaxed(val, nic->reg_base + offset);
}
