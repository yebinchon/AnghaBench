
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nicvf {scalar_t__ reg_base; } ;


 scalar_t__ readq_relaxed (scalar_t__) ;

u64 nicvf_reg_read(struct nicvf *nic, u64 offset)
{
 return readq_relaxed(nic->reg_base + offset);
}
