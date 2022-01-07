
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;


 int cx23885_flatiron_read (struct cx23885_dev*,int) ;
 int dprintk (int,char*,...) ;

__attribute__((used)) static void cx23885_flatiron_dump(struct cx23885_dev *dev)
{
 int i;
 dprintk(1, "Flatiron dump\n");
 for (i = 0; i < 0x24; i++) {
  dprintk(1, "FI[%02x] = %02x\n", i,
   cx23885_flatiron_read(dev, i));
 }
}
