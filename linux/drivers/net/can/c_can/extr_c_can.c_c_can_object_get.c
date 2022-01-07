
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int c_can_obj_update (struct net_device*,int,int ,int ) ;

__attribute__((used)) static inline void c_can_object_get(struct net_device *dev, int iface,
        u32 obj, u32 cmd)
{
 c_can_obj_update(dev, iface, cmd, obj);
}
