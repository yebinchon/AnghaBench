
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnxt {TYPE_1__* irq_tbl; TYPE_2__* dev; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int handler; int name; } ;


 int bnxt_inta ;
 scalar_t__ netdev_get_num_tc (TYPE_2__*) ;
 int netdev_reset_tc (TYPE_2__*) ;
 int snprintf (int ,int const,char*,char*,char*,int ) ;

__attribute__((used)) static void bnxt_setup_inta(struct bnxt *bp)
{
 const int len = sizeof(bp->irq_tbl[0].name);

 if (netdev_get_num_tc(bp->dev))
  netdev_reset_tc(bp->dev);

 snprintf(bp->irq_tbl[0].name, len, "%s-%s-%d", bp->dev->name, "TxRx",
   0);
 bp->irq_tbl[0].handler = bnxt_inta;
}
