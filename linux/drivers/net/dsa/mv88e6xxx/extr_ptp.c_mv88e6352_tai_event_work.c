
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct work_struct {int dummy; } ;
struct ptp_clock_event {int timestamp; scalar_t__ index; int type; } ;
struct mv88e6xxx_chip {int tai_event_work; int ptp_clock; int tstamp_tc; int dev; } ;
struct delayed_work {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int MV88E6XXX_TAI_EVENT_STATUS ;
 int MV88E6XXX_TAI_EVENT_STATUS_ERROR ;
 int MV88E6XXX_TAI_EVENT_STATUS_VALID ;
 int PTP_CLOCK_EXTTS ;
 int TAI_EVENT_WORK_INTERVAL ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 struct mv88e6xxx_chip* dw_tai_event_to_chip (struct delayed_work*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_tai_read (struct mv88e6xxx_chip*,int ,int*,int ) ;
 int mv88e6xxx_tai_write (struct mv88e6xxx_chip*,int ,int) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;
 int schedule_delayed_work (int *,int ) ;
 int timecounter_cyc2time (int *,int) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;

__attribute__((used)) static void mv88e6352_tai_event_work(struct work_struct *ugly)
{
 struct delayed_work *dw = to_delayed_work(ugly);
 struct mv88e6xxx_chip *chip = dw_tai_event_to_chip(dw);
 struct ptp_clock_event ev;
 u16 status[4];
 u32 raw_ts;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_tai_read(chip, MV88E6XXX_TAI_EVENT_STATUS,
     status, ARRAY_SIZE(status));
 mv88e6xxx_reg_unlock(chip);

 if (err) {
  dev_err(chip->dev, "failed to read TAI status register\n");
  return;
 }
 if (status[0] & MV88E6XXX_TAI_EVENT_STATUS_ERROR) {
  dev_warn(chip->dev, "missed event capture\n");
  return;
 }
 if (!(status[0] & MV88E6XXX_TAI_EVENT_STATUS_VALID))
  goto out;

 raw_ts = ((u32)status[2] << 16) | status[1];


 status[0] &= ~MV88E6XXX_TAI_EVENT_STATUS_VALID;
 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_tai_write(chip, MV88E6XXX_TAI_EVENT_STATUS, status[0]);
 mv88e6xxx_reg_unlock(chip);


 ev.type = PTP_CLOCK_EXTTS;


 ev.index = 0;
 mv88e6xxx_reg_lock(chip);
 ev.timestamp = timecounter_cyc2time(&chip->tstamp_tc, raw_ts);
 mv88e6xxx_reg_unlock(chip);

 ptp_clock_event(chip->ptp_clock, &ev);
out:
 schedule_delayed_work(&chip->tai_event_work, TAI_EVENT_WORK_INTERVAL);
}
