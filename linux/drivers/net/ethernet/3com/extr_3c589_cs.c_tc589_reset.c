
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; int if_port; int * dev_addr; } ;


 int AckIntr ;
 int AdapterFailure ;
 int EL3WINDOW (int) ;
 unsigned int EL3_CMD ;
 int IntLatch ;
 int IntReq ;
 int RxComplete ;
 int RxEarly ;
 int RxEnable ;
 int SetIntrEnb ;
 int SetStatusEnb ;
 int StatsDisable ;
 int StatsEnable ;
 int StatsFull ;
 int TxAvailable ;
 int TxEnable ;
 int inb (unsigned int) ;
 int inw (unsigned int) ;
 int outb (int ,unsigned int) ;
 int outw (int,unsigned int) ;
 int set_rx_mode (struct net_device*) ;
 int tc589_set_xcvr (struct net_device*,int ) ;

__attribute__((used)) static void tc589_reset(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 int i;

 EL3WINDOW(0);
 outw(0x0001, ioaddr + 4);
 outw(0x3f00, ioaddr + 8);


 EL3WINDOW(2);
 for (i = 0; i < 6; i++)
  outb(dev->dev_addr[i], ioaddr + i);

 tc589_set_xcvr(dev, dev->if_port);


 outw(StatsDisable, ioaddr + EL3_CMD);
 EL3WINDOW(6);
 for (i = 0; i < 9; i++)
  inb(ioaddr+i);
 inw(ioaddr + 10);
 inw(ioaddr + 12);


 EL3WINDOW(1);

 set_rx_mode(dev);
 outw(StatsEnable, ioaddr + EL3_CMD);
 outw(RxEnable, ioaddr + EL3_CMD);
 outw(TxEnable, ioaddr + EL3_CMD);

 outw(SetStatusEnb | 0xff, ioaddr + EL3_CMD);

 outw(AckIntr | IntLatch | TxAvailable | RxEarly | IntReq,
  ioaddr + EL3_CMD);
 outw(SetIntrEnb | IntLatch | TxAvailable | RxComplete | StatsFull
  | AdapterFailure, ioaddr + EL3_CMD);
}
