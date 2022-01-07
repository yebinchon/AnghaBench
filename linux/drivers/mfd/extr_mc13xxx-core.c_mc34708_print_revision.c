
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mc13xxx {TYPE_1__* variant; int dev; } ;
struct TYPE_2__ {int name; } ;


 int MC34708_REVISION_FAB ;
 int MC34708_REVISION_FIN ;
 int MC34708_REVISION_REVFULL ;
 int MC34708_REVISION_REVMETAL ;
 int dev_info (int ,char*,int ,int ,int ,int ,int ) ;
 int maskval (int ,int ) ;

__attribute__((used)) static void mc34708_print_revision(struct mc13xxx *mc13xxx, u32 revision)
{
 dev_info(mc13xxx->dev, "%s: rev %d.%d, fin: %d, fab: %d\n",
   mc13xxx->variant->name,
   maskval(revision, MC34708_REVISION_REVFULL),
   maskval(revision, MC34708_REVISION_REVMETAL),
   maskval(revision, MC34708_REVISION_FIN),
   maskval(revision, MC34708_REVISION_FAB));
}
