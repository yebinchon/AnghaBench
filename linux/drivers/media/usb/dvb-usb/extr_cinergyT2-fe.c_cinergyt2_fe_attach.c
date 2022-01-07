
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; int ops; } ;
struct cinergyt2_fe_state {struct dvb_frontend fe; int data_mutex; struct dvb_usb_device* d; } ;


 int GFP_KERNEL ;
 int cinergyt2_fe_ops ;
 struct cinergyt2_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_init (int *) ;

struct dvb_frontend *cinergyt2_fe_attach(struct dvb_usb_device *d)
{
 struct cinergyt2_fe_state *s = kzalloc(sizeof(
     struct cinergyt2_fe_state), GFP_KERNEL);
 if (s == ((void*)0))
  return ((void*)0);

 s->d = d;
 memcpy(&s->fe.ops, &cinergyt2_fe_ops, sizeof(struct dvb_frontend_ops));
 s->fe.demodulator_priv = s;
 mutex_init(&s->data_mutex);
 return &s->fe;
}
