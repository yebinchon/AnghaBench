
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nic_mbx {int dummy; } nic_mbx ;
typedef int u64 ;
struct nicvf {int dummy; } ;


 scalar_t__ NIC_VF_PF_MAILBOX_0_1 ;
 int nicvf_reg_write (struct nicvf*,scalar_t__,int ) ;

__attribute__((used)) static void nicvf_write_to_mbx(struct nicvf *nic, union nic_mbx *mbx)
{
 u64 *msg = (u64 *)mbx;

 nicvf_reg_write(nic, NIC_VF_PF_MAILBOX_0_1 + 0, msg[0]);
 nicvf_reg_write(nic, NIC_VF_PF_MAILBOX_0_1 + 8, msg[1]);
}
