
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dev_state; int stream_state; } ;


 int DEV_DISCONNECTED ;
 int ENODEV ;
 int STREAM_INTERRUPT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int au0828_stream_interrupt(struct au0828_dev *dev)
{
 dev->stream_state = STREAM_INTERRUPT;
 if (test_bit(DEV_DISCONNECTED, &dev->dev_state))
  return -ENODEV;
 return 0;
}
