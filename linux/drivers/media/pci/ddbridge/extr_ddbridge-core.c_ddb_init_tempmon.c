
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int regmapid; } ;
struct ddb_link {TYPE_2__* dev; int temp_lock; TYPE_1__ ids; struct ddb_info* info; } ;
struct ddb_info {scalar_t__ type; int tempmon_irq; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ DDB_OCTOPUS_MAX_CT ;
 int dev_dbg (int ,char*) ;
 int spin_lock_init (int *) ;
 int tempmon_init (struct ddb_link*,int) ;

__attribute__((used)) static int ddb_init_tempmon(struct ddb_link *link)
{
 const struct ddb_info *info = link->info;

 if (!info->tempmon_irq)
  return 0;
 if (info->type == DDB_OCTOPUS_MAX_CT)
  if (link->ids.regmapid < 0x00010002)
   return 0;
 spin_lock_init(&link->temp_lock);
 dev_dbg(link->dev->dev, "init_tempmon\n");
 return tempmon_init(link, 1);
}
