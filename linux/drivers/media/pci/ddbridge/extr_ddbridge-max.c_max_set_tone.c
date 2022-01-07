
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
struct ddb_dvb {int tone; int voltage; int input; } ;
struct ddb {TYPE_2__* link; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_3__ {int fmode; int lock; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int SEC_TONE_ON ;
 int SEC_VOLTAGE_18 ;
 int lnb_set_tone (struct ddb*,size_t,int ,int) ;
 int max_set_input_unlocked (struct dvb_frontend*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int old_quattro ;

__attribute__((used)) static int max_set_tone(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
 struct ddb_input *input = fe->sec_priv;
 struct ddb_port *port = input->port;
 struct ddb *dev = port->dev;
 struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
 int tuner = 0;
 int res = 0;
 u32 fmode = dev->link[port->lnr].lnb.fmode;

 mutex_lock(&dev->link[port->lnr].lnb.lock);
 dvb->tone = tone;
 switch (fmode) {
 default:
 case 0:
 case 3:
  res = lnb_set_tone(dev, port->lnr, dvb->input, tone);
  break;
 case 1:
 case 2:
  if (old_quattro) {
   if (dvb->tone == SEC_TONE_ON)
    tuner |= 2;
   if (dvb->voltage == SEC_VOLTAGE_18)
    tuner |= 1;
  } else {
   if (dvb->tone == SEC_TONE_ON)
    tuner |= 1;
   if (dvb->voltage == SEC_VOLTAGE_18)
    tuner |= 2;
  }
  res = max_set_input_unlocked(fe, tuner);
  break;
 }
 mutex_unlock(&dev->link[port->lnr].lnb.lock);
 return res;
}
