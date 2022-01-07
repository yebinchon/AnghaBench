
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int work; } ;
 int MBOX_BIT (int) ;
 int PRCM_ARM_IT1_CLR ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ;
 int complete (int *) ;
 TYPE_1__ mb4_transfer ;
 int print_unknown_header_warning (int,int) ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;
 int writel (int ,int ) ;

__attribute__((used)) static bool read_mailbox_4(void)
{
 u8 header;
 bool do_complete = 1;

 header = readb(tcdm_base + PRCM_MBOX_HEADER_REQ_MB4);
 switch (header) {
 case 128:
 case 131:
 case 130:
 case 129:
 case 136:
 case 134:
 case 135:
 case 132:
 case 133:
  break;
 default:
  print_unknown_header_warning(4, header);
  do_complete = 0;
  break;
 }

 writel(MBOX_BIT(4), PRCM_ARM_IT1_CLR);

 if (do_complete)
  complete(&mb4_transfer.work);

 return 0;
}
