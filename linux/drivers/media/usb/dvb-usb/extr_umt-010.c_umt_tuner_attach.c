
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; } ;
struct TYPE_2__ {int fe; } ;


 int DVB_PLL_TUA6034 ;
 int dvb_attach (int ,int ,int,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int umt_tuner_attach (struct dvb_usb_adapter *adap)
{
 dvb_attach(dvb_pll_attach, adap->fe_adap[0].fe, 0x61, ((void*)0), DVB_PLL_TUA6034);
 return 0;
}
