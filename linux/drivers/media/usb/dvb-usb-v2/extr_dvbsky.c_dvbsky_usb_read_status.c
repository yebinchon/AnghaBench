
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvbsky_state {int (* fe_read_status ) (struct dvb_frontend*,int*) ;int last_lock; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_LOCK ;
 struct dvbsky_state* d_to_priv (struct dvb_usb_device*) ;
 int dvbsky_stream_ctrl (struct dvb_usb_device*,int) ;
 struct dvb_usb_device* fe_to_d (struct dvb_frontend*) ;
 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int dvbsky_usb_read_status(struct dvb_frontend *fe,
      enum fe_status *status)
{
 struct dvb_usb_device *d = fe_to_d(fe);
 struct dvbsky_state *state = d_to_priv(d);
 int ret;

 ret = state->fe_read_status(fe, status);


 if ((*status & FE_HAS_LOCK) && (!state->last_lock))
  dvbsky_stream_ctrl(d, 1);

 state->last_lock = (*status & FE_HAS_LOCK) ? 1 : 0;
 return ret;
}
