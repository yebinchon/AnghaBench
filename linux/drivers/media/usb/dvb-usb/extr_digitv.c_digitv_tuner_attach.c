
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_4__* fe_adap; TYPE_1__* dev; } ;
struct digitv_state {scalar_t__ is_nxt6000; } ;
struct TYPE_7__ {int set_params; } ;
struct TYPE_8__ {TYPE_2__ tuner_ops; } ;
struct TYPE_10__ {TYPE_3__ ops; } ;
struct TYPE_9__ {TYPE_5__* fe; } ;
struct TYPE_6__ {struct digitv_state* priv; } ;


 int DVB_PLL_TDED4 ;
 int ENODEV ;
 int digitv_nxt6000_tuner_set_params ;
 int dvb_attach (int ,TYPE_5__*,int,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int digitv_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct digitv_state *st = adap->dev->priv;

 if (!dvb_attach(dvb_pll_attach, adap->fe_adap[0].fe, 0x60, ((void*)0), DVB_PLL_TDED4))
  return -ENODEV;

 if (st->is_nxt6000)
  adap->fe_adap[0].fe->ops.tuner_ops.set_params = digitv_nxt6000_tuner_set_params;

 return 0;
}
