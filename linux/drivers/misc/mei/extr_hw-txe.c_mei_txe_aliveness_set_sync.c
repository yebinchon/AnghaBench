
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 scalar_t__ mei_txe_aliveness_set (struct mei_device*,int ) ;
 int mei_txe_aliveness_wait (struct mei_device*,int ) ;

int mei_txe_aliveness_set_sync(struct mei_device *dev, u32 req)
{
 if (mei_txe_aliveness_set(dev, req))
  return mei_txe_aliveness_wait(dev, req);
 return 0;
}
