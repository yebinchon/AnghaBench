
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mei_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_hdr ) (struct mei_device const*) ;} ;


 int stub1 (struct mei_device const*) ;

__attribute__((used)) static inline u32 mei_read_hdr(const struct mei_device *dev)
{
 return dev->ops->read_hdr(dev);
}
