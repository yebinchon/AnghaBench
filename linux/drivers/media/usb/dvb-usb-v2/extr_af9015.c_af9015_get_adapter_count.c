
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct af9015_state {int dual_mode; } ;


 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;

__attribute__((used)) static int af9015_get_adapter_count(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);

 return state->dual_mode + 1;
}
