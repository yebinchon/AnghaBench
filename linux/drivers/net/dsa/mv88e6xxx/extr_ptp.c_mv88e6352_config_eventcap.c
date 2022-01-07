
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int evcap_config; int trig_config; } ;


 int EINVAL ;
 int MV88E6XXX_TAI_CFG ;
 int MV88E6XXX_TAI_CFG_CAP_CTR_START ;
 int MV88E6XXX_TAI_CFG_CAP_OVERWRITE ;
 int MV88E6XXX_TAI_CFG_EVREQ_FALLING ;
 int MV88E6XXX_TAI_EVENT_STATUS ;
 int MV88E6XXX_TAI_EVENT_STATUS_CAP_TRIG ;
 int PTP_CLOCK_EXTTS ;
 int PTP_CLOCK_PPS ;
 int mv88e6xxx_tai_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6352_config_eventcap(struct mv88e6xxx_chip *chip, int event,
         int rising)
{
 u16 global_config;
 u16 cap_config;
 int err;

 chip->evcap_config = MV88E6XXX_TAI_CFG_CAP_OVERWRITE |
        MV88E6XXX_TAI_CFG_CAP_CTR_START;
 if (!rising)
  chip->evcap_config |= MV88E6XXX_TAI_CFG_EVREQ_FALLING;

 global_config = (chip->evcap_config | chip->trig_config);
 err = mv88e6xxx_tai_write(chip, MV88E6XXX_TAI_CFG, global_config);
 if (err)
  return err;

 if (event == PTP_CLOCK_PPS) {
  cap_config = MV88E6XXX_TAI_EVENT_STATUS_CAP_TRIG;
 } else if (event == PTP_CLOCK_EXTTS) {

  cap_config = 0;
 } else {
  return -EINVAL;
 }


 err = mv88e6xxx_tai_write(chip, MV88E6XXX_TAI_EVENT_STATUS,
      cap_config);

 return err;
}
