
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
struct ttusb2_state {TYPE_1__ ca; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;


 int ci_dbg (char*) ;
 int dvb_ca_en50221_release (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void tt3650_ci_uninit(struct dvb_usb_device *d)
{
 struct ttusb2_state *state;

 ci_dbg("");

 if (((void*)0) == d)
  return;

 state = d->priv;
 if (((void*)0) == state)
  return;

 if (((void*)0) == state->ca.data)
  return;

 dvb_ca_en50221_release(&state->ca);

 memset(&state->ca, 0, sizeof(state->ca));
}
