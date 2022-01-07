
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; struct dib0700_adapter_state* priv; } ;
struct TYPE_3__ {int (* pid_filter_ctrl ) (int ,int) ;} ;
struct dib0700_adapter_state {TYPE_1__ dib8000_ops; } ;
struct TYPE_4__ {int fe; } ;


 int stub1 (int ,int) ;

__attribute__((used)) static int stk80xx_pid_filter_ctrl(struct dvb_usb_adapter *adapter,
  int onoff)
{
 struct dib0700_adapter_state *state = adapter->priv;

 return state->dib8000_ops.pid_filter_ctrl(adapter->fe_adap[0].fe, onoff);
}
