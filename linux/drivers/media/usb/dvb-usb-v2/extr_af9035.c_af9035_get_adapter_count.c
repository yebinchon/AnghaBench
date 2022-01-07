
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dual_mode; } ;
struct dvb_usb_device {int dummy; } ;


 struct state* d_to_priv (struct dvb_usb_device*) ;

__attribute__((used)) static int af9035_get_adapter_count(struct dvb_usb_device *d)
{
 struct state *state = d_to_priv(d);

 return state->dual_mode + 1;
}
