
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct ddb_input* sec_priv; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int input; int (* set_input ) (struct dvb_frontend*,int) ;} ;
struct ddb {TYPE_2__* link; } ;
struct TYPE_3__ {int* voltage; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int EINVAL ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int max_set_input_unlocked(struct dvb_frontend *fe, int in)
{
 struct ddb_input *input = fe->sec_priv;
 struct ddb_port *port = input->port;
 struct ddb *dev = port->dev;
 struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
 int res = 0;

 if (in > 3)
  return -EINVAL;
 if (dvb->input != in) {
  u32 bit = (1ULL << input->nr);
  u32 obit =
   dev->link[port->lnr].lnb.voltage[dvb->input & 3] & bit;

  dev->link[port->lnr].lnb.voltage[dvb->input & 3] &= ~bit;
  dvb->input = in;
  dev->link[port->lnr].lnb.voltage[dvb->input & 3] |= obit;
 }
 res = dvb->set_input(fe, in);
 return res;
}
