
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_frontend {int dummy; } ;
struct dm1105_dev {size_t boardnr; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_3__ {int off; int mask; int v13; int v18; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int SEC_VOLTAGE_13 ;
 int SEC_VOLTAGE_18 ;
 TYPE_2__* dm1105_boards ;
 int dm1105_gpio_andor (struct dm1105_dev*,int ,int ) ;
 int dm1105_gpio_enable (struct dm1105_dev*,int ,int) ;
 struct dm1105_dev* frontend_to_dm1105_dev (struct dvb_frontend*) ;

__attribute__((used)) static int dm1105_set_voltage(struct dvb_frontend *fe,
         enum fe_sec_voltage voltage)
{
 struct dm1105_dev *dev = frontend_to_dm1105_dev(fe);

 dm1105_gpio_enable(dev, dm1105_boards[dev->boardnr].lnb.mask, 1);
 if (voltage == SEC_VOLTAGE_18)
  dm1105_gpio_andor(dev,
    dm1105_boards[dev->boardnr].lnb.mask,
    dm1105_boards[dev->boardnr].lnb.v18);
 else if (voltage == SEC_VOLTAGE_13)
  dm1105_gpio_andor(dev,
    dm1105_boards[dev->boardnr].lnb.mask,
    dm1105_boards[dev->boardnr].lnb.v13);
 else
  dm1105_gpio_andor(dev,
    dm1105_boards[dev->boardnr].lnb.mask,
    dm1105_boards[dev->boardnr].lnb.off);

 return 0;
}
