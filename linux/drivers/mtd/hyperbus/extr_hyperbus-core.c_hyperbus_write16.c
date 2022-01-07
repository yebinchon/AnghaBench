
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct hyperbus_device {struct hyperbus_ctlr* ctlr; } ;
struct hyperbus_ctlr {TYPE_1__* ops; } ;
struct TYPE_5__ {int * x; } ;
typedef TYPE_2__ map_word ;
struct TYPE_4__ {int (* write16 ) (struct hyperbus_device*,unsigned long,int ) ;} ;


 struct hyperbus_device* map_to_hbdev (struct map_info*) ;
 int stub1 (struct hyperbus_device*,unsigned long,int ) ;

__attribute__((used)) static void hyperbus_write16(struct map_info *map, map_word d,
        unsigned long addr)
{
 struct hyperbus_device *hbdev = map_to_hbdev(map);
 struct hyperbus_ctlr *ctlr = hbdev->ctlr;

 ctlr->ops->write16(hbdev, addr, d.x[0]);
}
