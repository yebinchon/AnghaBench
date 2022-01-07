
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mc13xxx {TYPE_1__* variant; int dev; } ;
struct TYPE_2__ {int name; } ;


 int MC13XXX_REVISION_FAB ;
 int MC13XXX_REVISION_FIN ;
 int MC13XXX_REVISION_ICID ;
 int MC13XXX_REVISION_ICIDCODE ;
 int MC13XXX_REVISION_REVFULL ;
 int MC13XXX_REVISION_REVMETAL ;
 int dev_info (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int maskval (int ,int ) ;

__attribute__((used)) static void mc13xxx_print_revision(struct mc13xxx *mc13xxx, u32 revision)
{
 dev_info(mc13xxx->dev, "%s: rev: %d.%d, "
   "fin: %d, fab: %d, icid: %d/%d\n",
   mc13xxx->variant->name,
   maskval(revision, MC13XXX_REVISION_REVFULL),
   maskval(revision, MC13XXX_REVISION_REVMETAL),
   maskval(revision, MC13XXX_REVISION_FIN),
   maskval(revision, MC13XXX_REVISION_FAB),
   maskval(revision, MC13XXX_REVISION_ICID),
   maskval(revision, MC13XXX_REVISION_ICIDCODE));
}
