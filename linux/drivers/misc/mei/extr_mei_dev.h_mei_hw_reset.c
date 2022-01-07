
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* hw_reset ) (struct mei_device*,int) ;} ;


 int stub1 (struct mei_device*,int) ;

__attribute__((used)) static inline int mei_hw_reset(struct mei_device *dev, bool enable)
{
 return dev->ops->hw_reset(dev, enable);
}
