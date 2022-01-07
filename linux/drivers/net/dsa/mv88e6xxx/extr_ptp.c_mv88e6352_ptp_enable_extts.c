
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int index; } ;
struct ptp_clock_request {TYPE_1__ extts; } ;
struct mv88e6xxx_chip {int tai_event_work; int ptp_clock; } ;


 int EBUSY ;
 int MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ ;
 int MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO ;
 int PTP_CLOCK_EXTTS ;
 int PTP_PF_EXTTS ;
 int PTP_RISING_EDGE ;
 int TAI_EVENT_WORK_INTERVAL ;
 int cancel_delayed_work_sync (int *) ;
 int mv88e6352_config_eventcap (struct mv88e6xxx_chip*,int ,int) ;
 int mv88e6352_set_gpio_func (struct mv88e6xxx_chip*,int,int,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int ptp_find_pin (int ,int ,int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int mv88e6352_ptp_enable_extts(struct mv88e6xxx_chip *chip,
          struct ptp_clock_request *rq, int on)
{
 int rising = (rq->extts.flags & PTP_RISING_EDGE);
 int func;
 int pin;
 int err;

 pin = ptp_find_pin(chip->ptp_clock, PTP_PF_EXTTS, rq->extts.index);

 if (pin < 0)
  return -EBUSY;

 mv88e6xxx_reg_lock(chip);

 if (on) {
  func = MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ;

  err = mv88e6352_set_gpio_func(chip, pin, func, 1);
  if (err)
   goto out;

  schedule_delayed_work(&chip->tai_event_work,
          TAI_EVENT_WORK_INTERVAL);

  err = mv88e6352_config_eventcap(chip, PTP_CLOCK_EXTTS, rising);
 } else {
  func = MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO;

  err = mv88e6352_set_gpio_func(chip, pin, func, 1);

  cancel_delayed_work_sync(&chip->tai_event_work);
 }

out:
 mv88e6xxx_reg_unlock(chip);

 return err;
}
