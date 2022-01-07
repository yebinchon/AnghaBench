
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
struct TYPE_4__ {int work; TYPE_1__ ack; } ;


 int MBOX_BIT (int) ;
 scalar_t__ PRCM_ACK_MB2_DPS_STATUS ;
 int PRCM_ARM_IT1_CLR ;
 int complete (int *) ;
 TYPE_2__ mb2_transfer ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;
 int writel (int ,int ) ;

__attribute__((used)) static bool read_mailbox_2(void)
{
 mb2_transfer.ack.status = readb(tcdm_base + PRCM_ACK_MB2_DPS_STATUS);
 writel(MBOX_BIT(2), PRCM_ARM_IT1_CLR);
 complete(&mb2_transfer.work);
 return 0;
}
