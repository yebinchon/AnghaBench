
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nicpf {scalar_t__ reg_base; } ;


 scalar_t__ readq_relaxed (scalar_t__) ;

__attribute__((used)) static u64 nic_reg_read(struct nicpf *nic, u64 offset)
{
 return readq_relaxed(nic->reg_base + offset);
}
