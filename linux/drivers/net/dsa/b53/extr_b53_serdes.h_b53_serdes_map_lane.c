
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* serdes_map_lane ) (struct b53_device*,int) ;} ;


 int B53_INVALID_LANE ;
 int stub1 (struct b53_device*,int) ;

__attribute__((used)) static inline u8 b53_serdes_map_lane(struct b53_device *dev, int port)
{
 if (!dev->ops->serdes_map_lane)
  return B53_INVALID_LANE;

 return dev->ops->serdes_map_lane(dev, port);
}
