
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int (* set_agc1_min ) (struct dvb_frontend*,int) ;int (* set_gpio ) (struct dvb_frontend*,int,int ,int) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib7000p_ops; } ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;


 int deb_info (char*,int) ;
 int stub1 (struct dvb_frontend*,int,int ,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int,int ,int) ;
 int stub4 (struct dvb_frontend*,int) ;

__attribute__((used)) static int tfe7790p_update_lna(struct dvb_frontend *fe, u16 agc_global)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dib0700_adapter_state *state = adap->priv;

 deb_info("update LNA: agc global=%i", agc_global);

 if (agc_global < 25000) {
  state->dib7000p_ops.set_gpio(fe, 8, 0, 0);
  state->dib7000p_ops.set_agc1_min(fe, 0);
 } else {
  state->dib7000p_ops.set_gpio(fe, 8, 0, 1);
  state->dib7000p_ops.set_agc1_min(fe, 32768);
 }

 return 0;
}
