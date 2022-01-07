
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {int baudrate; } ;
struct net_device {int base_addr; } ;


 int DLL (int ) ;
 int DLM (int ) ;
 int ENABLE_RTXINT ;
 int FCR (int ) ;
 int IER (int ) ;
 int LCR (int ) ;
 int LCR_BIT8 ;
 int LCR_DLAB ;
 int MCR (int ) ;
 int MSR (int ) ;
 int PTT_OFF ;
 int RBR (int ) ;
 int inb (int ) ;
 struct yam_port* netdev_priv (struct net_device*) ;
 int outb (int,int ) ;

__attribute__((used)) static void yam_set_uart(struct net_device *dev)
{
 struct yam_port *yp = netdev_priv(dev);
 int divisor = 115200 / yp->baudrate;

 outb(0, IER(dev->base_addr));
 outb(LCR_DLAB | LCR_BIT8, LCR(dev->base_addr));
 outb(divisor, DLL(dev->base_addr));
 outb(0, DLM(dev->base_addr));
 outb(LCR_BIT8, LCR(dev->base_addr));
 outb(PTT_OFF, MCR(dev->base_addr));
 outb(0x00, FCR(dev->base_addr));



 inb(RBR(dev->base_addr));
 inb(MSR(dev->base_addr));



 outb(ENABLE_RTXINT, IER(dev->base_addr));
}
