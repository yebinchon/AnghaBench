
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_errors; } ;
struct TYPE_5__ {TYPE_1__ gen; } ;
struct TYPE_6__ {TYPE_2__ MacStat; } ;
struct s_smc {TYPE_3__ os; } ;


 int pr_debug (char*,...) ;

void smt_stat_counter(struct s_smc *smc, int stat)
{


 pr_debug("smt_stat_counter\n");
 switch (stat) {
 case 0:
  pr_debug("Ring operational change.\n");
  break;
 case 1:
  pr_debug("Receive fifo overflow.\n");
  smc->os.MacStat.gen.rx_errors++;
  break;
 default:
  pr_debug("Unknown status (%d).\n", stat);
  break;
 }
}
