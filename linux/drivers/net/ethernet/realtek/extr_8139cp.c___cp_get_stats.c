
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cp_private {TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_missed_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int RxMissed ;
 int cpr32 (int ) ;
 int cpw32 (int ,int ) ;

__attribute__((used)) static void __cp_get_stats(struct cp_private *cp)
{

 cp->dev->stats.rx_missed_errors += (cpr32 (RxMissed) & 0xffffff);
 cpw32 (RxMissed, 0);
}
