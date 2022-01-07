
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; struct dib0700_adapter_state* priv; } ;
struct TYPE_3__ {int (* set_gpio ) (int ,int,int ,int) ;} ;
struct dib0700_adapter_state {TYPE_1__ dib7000p_ops; } ;
struct TYPE_4__ {int fe; } ;


 int EINVAL ;
 int XC4000_TUNER_RESET ;
 int err (char*,int) ;
 int msleep (int) ;
 int stub1 (int ,int,int ,int) ;
 int stub2 (int ,int,int ,int) ;

__attribute__((used)) static int dib0700_xc4000_tuner_callback(void *priv, int component,
      int command, int arg)
{
 struct dvb_usb_adapter *adap = priv;
 struct dib0700_adapter_state *state = adap->priv;

 if (command == XC4000_TUNER_RESET) {

  state->dib7000p_ops.set_gpio(adap->fe_adap[0].fe, 8, 0, 0);
  msleep(10);
  state->dib7000p_ops.set_gpio(adap->fe_adap[0].fe, 8, 0, 1);
 } else {
  err("xc4000: unknown tuner callback command: %d\n", command);
  return -EINVAL;
 }

 return 0;
}
