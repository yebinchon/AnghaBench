
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int dma_done; } ;


 int ETIMEDOUT ;
 int dbg (char*) ;
 int msecs_to_jiffies (int) ;
 long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int r852_dma_wait(struct r852_device *dev)
{
 long timeout = wait_for_completion_timeout(&dev->dma_done,
    msecs_to_jiffies(1000));
 if (!timeout) {
  dbg("timeout waiting for DMA interrupt");
  return -ETIMEDOUT;
 }

 return 0;
}
