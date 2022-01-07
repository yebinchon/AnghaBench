
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int tx_aborted_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int name; } ;


 scalar_t__ EL3_CMD ;
 int TxEnable ;
 int TxReset ;
 scalar_t__ TxStatus ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pr_debug (char*,int ,int) ;
 int tc574_wait_for_completion (struct net_device*,int ) ;

__attribute__((used)) static void pop_tx_status(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 int i;


 for (i = 32; i > 0; i--) {
  u_char tx_status = inb(ioaddr + TxStatus);
  if (!(tx_status & 0x84))
   break;

  if (tx_status & 0x30)
   tc574_wait_for_completion(dev, TxReset);
  if (tx_status & 0x38) {
   pr_debug("%s: transmit error: status 0x%02x\n",
      dev->name, tx_status);
   outw(TxEnable, ioaddr + EL3_CMD);
   dev->stats.tx_aborted_errors++;
  }
  outb(0x00, ioaddr + TxStatus);
 }
}
