
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int (* get_adc_power ) (struct dvb_frontend*,int) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib8000_ops; } ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;


 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dib8090_get_adc_power(struct dvb_frontend *fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dib0700_adapter_state *state = adap->priv;

 return state->dib8000_ops.get_adc_power(fe, 1);
}
