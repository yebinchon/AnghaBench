
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long u64 ;
typedef scalar_t__ u32 ;
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_ptp_ops {long cc_mult_num; int cc_mult_dem; scalar_t__ cc_mult; } ;
struct TYPE_4__ {scalar_t__ mult; } ;
struct mv88e6xxx_chip {TYPE_1__ tstamp_cc; int tstamp_tc; TYPE_3__* info; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {struct mv88e6xxx_ptp_ops* ptp_ops; } ;


 scalar_t__ div_u64 (long,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 struct mv88e6xxx_chip* ptp_to_chip (struct ptp_clock_info*) ;
 int timecounter_read (int *) ;

__attribute__((used)) static int mv88e6xxx_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
{
 struct mv88e6xxx_chip *chip = ptp_to_chip(ptp);
 const struct mv88e6xxx_ptp_ops *ptp_ops = chip->info->ops->ptp_ops;
 int neg_adj = 0;
 u32 diff, mult;
 u64 adj;

 if (scaled_ppm < 0) {
  neg_adj = 1;
  scaled_ppm = -scaled_ppm;
 }

 mult = ptp_ops->cc_mult;
 adj = ptp_ops->cc_mult_num;
 adj *= scaled_ppm;
 diff = div_u64(adj, ptp_ops->cc_mult_dem);

 mv88e6xxx_reg_lock(chip);

 timecounter_read(&chip->tstamp_tc);
 chip->tstamp_cc.mult = neg_adj ? mult - diff : mult + diff;

 mv88e6xxx_reg_unlock(chip);

 return 0;
}
