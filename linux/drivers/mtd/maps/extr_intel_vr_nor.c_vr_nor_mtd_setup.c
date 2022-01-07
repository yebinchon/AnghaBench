
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vr_nor_mtd {TYPE_2__* dev; TYPE_3__* info; int map; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct TYPE_5__ {int dev; } ;


 int ENODEV ;
 TYPE_3__* do_map_probe (char const* const,int *) ;

__attribute__((used)) static int vr_nor_mtd_setup(struct vr_nor_mtd *p)
{
 static const char * const probe_types[] =
     { "cfi_probe", "jedec_probe", ((void*)0) };
 const char * const *type;

 for (type = probe_types; !p->info && *type; type++)
  p->info = do_map_probe(*type, &p->map);
 if (!p->info)
  return -ENODEV;

 p->info->dev.parent = &p->dev->dev;

 return 0;
}
