
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ksz_device {TYPE_1__* dev_ops; } ;
struct TYPE_2__ {int (* get_port_addr ) (int,int) ;} ;


 int ksz_write32 (struct ksz_device*,int ,int ) ;
 int stub1 (int,int) ;

__attribute__((used)) static inline void ksz_pwrite32(struct ksz_device *dev, int port, int offset,
    u32 data)
{
 ksz_write32(dev, dev->dev_ops->get_port_addr(port, offset), data);
}
