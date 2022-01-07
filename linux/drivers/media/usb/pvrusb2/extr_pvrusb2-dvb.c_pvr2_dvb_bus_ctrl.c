
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_dvb_adapter {int channel; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct pvr2_dvb_adapter* priv; } ;


 int PVR2_CVAL_INPUT_DTV ;
 int pvr2_channel_limit_inputs (int *,int) ;

__attribute__((used)) static int pvr2_dvb_bus_ctrl(struct dvb_frontend *fe, int acquire)
{
 struct pvr2_dvb_adapter *adap = fe->dvb->priv;
 return pvr2_channel_limit_inputs(
     &adap->channel,
     (acquire ? (1 << PVR2_CVAL_INPUT_DTV) : 0));
}
