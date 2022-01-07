
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct anysee_state {int ci; scalar_t__ ci_attached; } ;


 struct anysee_state* d_to_priv (struct dvb_usb_device*) ;
 int dvb_ca_en50221_release (int *) ;

__attribute__((used)) static void anysee_ci_release(struct dvb_usb_device *d)
{
 struct anysee_state *state = d_to_priv(d);


 if (state->ci_attached)
  dvb_ca_en50221_release(&state->ci);

 return;
}
