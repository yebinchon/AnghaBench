
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_request {int type; } ;
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_chip {int dummy; } ;


 int EOPNOTSUPP ;

 int mv88e6352_ptp_enable_extts (struct mv88e6xxx_chip*,struct ptp_clock_request*,int) ;
 struct mv88e6xxx_chip* ptp_to_chip (struct ptp_clock_info*) ;

__attribute__((used)) static int mv88e6352_ptp_enable(struct ptp_clock_info *ptp,
    struct ptp_clock_request *rq, int on)
{
 struct mv88e6xxx_chip *chip = ptp_to_chip(ptp);

 switch (rq->type) {
 case 128:
  return mv88e6352_ptp_enable_extts(chip, rq, on);
 default:
  return -EOPNOTSUPP;
 }
}
