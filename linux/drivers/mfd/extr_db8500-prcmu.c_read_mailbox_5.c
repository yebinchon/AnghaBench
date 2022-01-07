
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* value; void* status; } ;
struct TYPE_4__ {int work; TYPE_1__ ack; } ;


 int MBOX_BIT (int) ;
 scalar_t__ PRCM_ACK_MB5_I2C_STATUS ;
 scalar_t__ PRCM_ACK_MB5_I2C_VAL ;
 int PRCM_ARM_IT1_CLR ;
 int complete (int *) ;
 TYPE_2__ mb5_transfer ;
 void* readb (scalar_t__) ;
 scalar_t__ tcdm_base ;
 int writel (int ,int ) ;

__attribute__((used)) static bool read_mailbox_5(void)
{
 mb5_transfer.ack.status = readb(tcdm_base + PRCM_ACK_MB5_I2C_STATUS);
 mb5_transfer.ack.value = readb(tcdm_base + PRCM_ACK_MB5_I2C_VAL);
 writel(MBOX_BIT(5), PRCM_ARM_IT1_CLR);
 complete(&mb5_transfer.work);
 return 0;
}
