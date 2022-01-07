
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvbsky_state {scalar_t__ last_lock; int stream_mutex; } ;
struct dvb_usb_device {int dummy; } ;


 struct dvbsky_state* d_to_priv (struct dvb_usb_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int dvbsky_init(struct dvb_usb_device *d)
{
 struct dvbsky_state *state = d_to_priv(d);







 mutex_init(&state->stream_mutex);

 state->last_lock = 0;

 return 0;
}
