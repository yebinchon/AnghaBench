
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;


 int NIC_VF_REG_COUNT ;

__attribute__((used)) static int nicvf_get_regs_len(struct net_device *dev)
{
 return sizeof(u64) * NIC_VF_REG_COUNT;
}
