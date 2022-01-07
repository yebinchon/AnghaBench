
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {int packet_filter; TYPE_2__* regs; } ;
struct TYPE_3__ {int ctrl; int pf_ctrl; } ;
struct TYPE_4__ {TYPE_1__ rxmac; } ;


 int ET131X_PACKET_TYPE_ALL_MULTICAST ;
 int ET131X_PACKET_TYPE_BROADCAST ;
 int ET131X_PACKET_TYPE_DIRECTED ;
 int ET131X_PACKET_TYPE_PROMISCUOUS ;
 int et1310_setup_device_for_multicast (struct et131x_adapter*) ;
 int et1310_setup_device_for_unicast (struct et131x_adapter*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int et131x_set_packet_filter(struct et131x_adapter *adapter)
{
 int filter = adapter->packet_filter;
 u32 ctrl;
 u32 pf_ctrl;

 ctrl = readl(&adapter->regs->rxmac.ctrl);
 pf_ctrl = readl(&adapter->regs->rxmac.pf_ctrl);


 ctrl |= 0x04;




 if ((filter & ET131X_PACKET_TYPE_PROMISCUOUS) || filter == 0)
  pf_ctrl &= ~7;
 else {




  if (filter & ET131X_PACKET_TYPE_ALL_MULTICAST)
   pf_ctrl &= ~2;
  else {
   et1310_setup_device_for_multicast(adapter);
   pf_ctrl |= 2;
   ctrl &= ~0x04;
  }


  if (filter & ET131X_PACKET_TYPE_DIRECTED) {
   et1310_setup_device_for_unicast(adapter);
   pf_ctrl |= 4;
   ctrl &= ~0x04;
  }


  if (filter & ET131X_PACKET_TYPE_BROADCAST) {
   pf_ctrl |= 1;
   ctrl &= ~0x04;
  } else {
   pf_ctrl &= ~1;
  }





  writel(pf_ctrl, &adapter->regs->rxmac.pf_ctrl);
  writel(ctrl, &adapter->regs->rxmac.ctrl);
 }
 return 0;
}
