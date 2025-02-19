
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw2102_state {int (* fe_read_status ) (struct dvb_frontend*,int*) ;int last_lock; } ;
struct dvb_usb_adapter {TYPE_2__* dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int FE_HAS_LOCK ;
 int stub1 (struct dvb_frontend*,int*) ;
 int su3000_streaming_ctrl (struct dvb_usb_adapter*,int) ;

__attribute__((used)) static int tt_s2_4600_read_status(struct dvb_frontend *fe,
      enum fe_status *status)
{
 struct dvb_usb_adapter *d =
  (struct dvb_usb_adapter *)(fe->dvb->priv);
 struct dw2102_state *st = (struct dw2102_state *)d->dev->priv;
 int ret;

 ret = st->fe_read_status(fe, status);


 if ((*status & FE_HAS_LOCK) && (!st->last_lock))
  su3000_streaming_ctrl(d, 1);

 st->last_lock = (*status & FE_HAS_LOCK) ? 1 : 0;
 return ret;
}
