
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union bfi_ioc_i2h_msg_u {int dummy; } bfi_ioc_i2h_msg_u ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ lpu_mbox_cmd; scalar_t__ lpu_mbox; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int htonl (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static bool
bfa_ioc_msgget(struct bfa_ioc *ioc, void *mbmsg)
{
 u32 *msgp = mbmsg;
 u32 r32;
 int i;

 r32 = readl(ioc->ioc_regs.lpu_mbox_cmd);
 if ((r32 & 1) == 0)
  return 0;




 for (i = 0; i < (sizeof(union bfi_ioc_i2h_msg_u) / sizeof(u32));
      i++) {
  r32 = readl(ioc->ioc_regs.lpu_mbox +
       i * sizeof(u32));
  msgp[i] = htonl(r32);
 }




 writel(1, ioc->ioc_regs.lpu_mbox_cmd);
 readl(ioc->ioc_regs.lpu_mbox_cmd);

 return 1;
}
