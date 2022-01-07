
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int enable; int settime64; int gettime64; int adjtime; int adjfreq; scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int max_adj; int name; int owner; } ;
struct bnx2x {int * ptp_clock; TYPE_2__* pdev; TYPE_3__ ptp_clock_info; TYPE_1__* dev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {char* name; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MAX_PHC_DRIFT ;
 scalar_t__ IS_ERR (int *) ;
 int THIS_MODULE ;
 int bnx2x_ptp_adjfreq ;
 int bnx2x_ptp_adjtime ;
 int bnx2x_ptp_enable ;
 int bnx2x_ptp_gettime ;
 int bnx2x_ptp_settime ;
 int * ptp_clock_register (TYPE_3__*,int *) ;
 int snprintf (int ,int,char*,char*) ;

void bnx2x_register_phc(struct bnx2x *bp)
{

 bp->ptp_clock_info.owner = THIS_MODULE;
 snprintf(bp->ptp_clock_info.name, 16, "%s", bp->dev->name);
 bp->ptp_clock_info.max_adj = BNX2X_MAX_PHC_DRIFT;
 bp->ptp_clock_info.n_alarm = 0;
 bp->ptp_clock_info.n_ext_ts = 0;
 bp->ptp_clock_info.n_per_out = 0;
 bp->ptp_clock_info.pps = 0;
 bp->ptp_clock_info.adjfreq = bnx2x_ptp_adjfreq;
 bp->ptp_clock_info.adjtime = bnx2x_ptp_adjtime;
 bp->ptp_clock_info.gettime64 = bnx2x_ptp_gettime;
 bp->ptp_clock_info.settime64 = bnx2x_ptp_settime;
 bp->ptp_clock_info.enable = bnx2x_ptp_enable;

 bp->ptp_clock = ptp_clock_register(&bp->ptp_clock_info, &bp->pdev->dev);
 if (IS_ERR(bp->ptp_clock)) {
  bp->ptp_clock = ((void*)0);
  BNX2X_ERR("PTP clock registration failed\n");
 }
}
