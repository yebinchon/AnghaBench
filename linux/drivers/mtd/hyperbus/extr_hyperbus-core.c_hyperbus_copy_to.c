
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct hyperbus_device {struct hyperbus_ctlr* ctlr; } ;
struct hyperbus_ctlr {TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* copy_to ) (struct hyperbus_device*,unsigned long,void const*,int ) ;} ;


 struct hyperbus_device* map_to_hbdev (struct map_info*) ;
 int stub1 (struct hyperbus_device*,unsigned long,void const*,int ) ;

__attribute__((used)) static void hyperbus_copy_to(struct map_info *map, unsigned long to,
        const void *from, ssize_t len)
{
 struct hyperbus_device *hbdev = map_to_hbdev(map);
 struct hyperbus_ctlr *ctlr = hbdev->ctlr;

 ctlr->ops->copy_to(hbdev, to, from, len);
}
