
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;


 int dev_dbg (int ,char*) ;
 int mei_me_host_set_ready (struct mei_device*) ;
 int mei_me_hw_ready_wait (struct mei_device*) ;

__attribute__((used)) static int mei_me_hw_start(struct mei_device *dev)
{
 int ret = mei_me_hw_ready_wait(dev);

 if (ret)
  return ret;
 dev_dbg(dev->dev, "hw is ready\n");

 mei_me_host_set_ready(dev);
 return ret;
}
