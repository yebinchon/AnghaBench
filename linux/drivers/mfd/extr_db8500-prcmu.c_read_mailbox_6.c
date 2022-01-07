
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBOX_BIT (int) ;
 int PRCM_ARM_IT1_CLR ;
 int writel (int ,int ) ;

__attribute__((used)) static bool read_mailbox_6(void)
{
 writel(MBOX_BIT(6), PRCM_ARM_IT1_CLR);
 return 0;
}
