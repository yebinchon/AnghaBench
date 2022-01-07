
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int GFP_KERNEL ;
 int RX_END ;
 int RX_LEN ;
 int RX_START ;
 int TX_END ;
 int buffer_read ;
 int buffer_write ;
 int ether3_readbuffer (struct net_device*,unsigned char*,int ) ;
 int ether3_setbuffer (struct net_device*,int ,int) ;
 int ether3_writebuffer (struct net_device*,unsigned char*,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memset (unsigned char*,unsigned char,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int
ether3_ramtest(struct net_device *dev, unsigned char byte)
{
 unsigned char *buffer = kmalloc(RX_END, GFP_KERNEL);
 int i,ret = 0;
 int max_errors = 4;
 int bad = -1;

 if (!buffer)
  return 1;

 memset(buffer, byte, RX_END);
 ether3_setbuffer(dev, buffer_write, 0);
 ether3_writebuffer(dev, buffer, TX_END);
 ether3_setbuffer(dev, buffer_write, RX_START);
 ether3_writebuffer(dev, buffer + RX_START, RX_LEN);
 memset(buffer, byte ^ 0xff, RX_END);
 ether3_setbuffer(dev, buffer_read, 0);
 ether3_readbuffer(dev, buffer, TX_END);
 ether3_setbuffer(dev, buffer_read, RX_START);
 ether3_readbuffer(dev, buffer + RX_START, RX_LEN);

 for (i = 0; i < RX_END; i++) {
  if (buffer[i] != byte) {
   if (max_errors > 0 && bad != buffer[i]) {
    printk("%s: RAM failed with (%02X instead of %02X) at 0x%04X",
           dev->name, buffer[i], byte, i);
    ret = 2;
    max_errors--;
    bad = i;
   }
  } else {
   if (bad != -1) {
    if (bad != i - 1)
     printk(" - 0x%04X\n", i - 1);
    printk("\n");
    bad = -1;
   }
  }
 }
 if (bad != -1)
  printk(" - 0xffff\n");
 kfree(buffer);

 return ret;
}
