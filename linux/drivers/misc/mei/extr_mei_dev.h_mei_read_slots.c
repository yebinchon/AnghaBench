
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (struct mei_device*,unsigned char*,unsigned long) ;} ;


 int stub1 (struct mei_device*,unsigned char*,unsigned long) ;

__attribute__((used)) static inline void mei_read_slots(struct mei_device *dev,
       unsigned char *buf, unsigned long len)
{
 dev->ops->read(dev, buf, len);
}
