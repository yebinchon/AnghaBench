
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ NIC_PF_VF_0_127_MAILBOX_0_1 ;
 int NIC_VF_NUM_SHIFT ;

__attribute__((used)) static u64 nic_get_mbx_addr(int vf)
{
 return NIC_PF_VF_0_127_MAILBOX_0_1 + (vf << NIC_VF_NUM_SHIFT);
}
