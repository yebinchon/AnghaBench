
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int dummy; } ;


 int BIT_ULL (int) ;
 scalar_t__ NIC_PF_MAILBOX_INT ;
 int nic_reg_write (struct nicpf*,scalar_t__,int ) ;

__attribute__((used)) static void nic_clear_mbx_intr(struct nicpf *nic, int vf, int mbx_reg)
{
 nic_reg_write(nic, NIC_PF_MAILBOX_INT + (mbx_reg << 3), BIT_ULL(vf));
}
