
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_dev {int dummy; } ;


 int cx8802_stop_dma (struct cx8802_dev*) ;
 int do_cancel_buffers (struct cx8802_dev*) ;
 int dprintk (int,char*) ;

void cx8802_cancel_buffers(struct cx8802_dev *dev)
{
 dprintk(1, "\n");
 cx8802_stop_dma(dev);
 do_cancel_buffers(dev);
}
