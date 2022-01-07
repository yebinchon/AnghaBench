
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx23885_tsport {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct cx23885_tsport* priv; } ;


 int MC417_RWD ;
 int SEC_VOLTAGE_13 ;
 int SEC_VOLTAGE_18 ;
 int cx_write (int ,int) ;

__attribute__((used)) static int p8000_set_voltage(struct dvb_frontend *fe,
        enum fe_sec_voltage voltage)
{
 struct cx23885_tsport *port = fe->dvb->priv;
 struct cx23885_dev *dev = port->dev;

 if (voltage == SEC_VOLTAGE_18)
  cx_write(MC417_RWD, 0x00001e00);
 else if (voltage == SEC_VOLTAGE_13)
  cx_write(MC417_RWD, 0x00001a00);
 else
  cx_write(MC417_RWD, 0x00001800);
 return 0;
}
