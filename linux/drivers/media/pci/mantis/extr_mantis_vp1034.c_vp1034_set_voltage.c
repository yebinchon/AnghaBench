
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mantis_pci {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct mantis_pci* priv; } ;


 int EINVAL ;
 int MANTIS_ERROR ;
 int MANTIS_GPIF_DOUT ;



 int dprintk (int ,int,char*,...) ;
 int mantis_gpio_set_bits (struct mantis_pci*,int,int) ;
 int mmwrite (int,int ) ;

int vp1034_set_voltage(struct dvb_frontend *fe, enum fe_sec_voltage voltage)
{
 struct mantis_pci *mantis = fe->dvb->priv;

 switch (voltage) {
 case 130:
  dprintk(MANTIS_ERROR, 1, "Polarization=[13V]");
  mantis_gpio_set_bits(mantis, 13, 1);
  mantis_gpio_set_bits(mantis, 14, 0);
  break;
 case 129:
  dprintk(MANTIS_ERROR, 1, "Polarization=[18V]");
  mantis_gpio_set_bits(mantis, 13, 1);
  mantis_gpio_set_bits(mantis, 14, 1);
  break;
 case 128:
  dprintk(MANTIS_ERROR, 1, "Frontend (dummy) POWERDOWN");
  break;
 default:
  dprintk(MANTIS_ERROR, 1, "Invalid = (%d)", (u32) voltage);
  return -EINVAL;
 }
 mmwrite(0x00, MANTIS_GPIF_DOUT);

 return 0;
}
