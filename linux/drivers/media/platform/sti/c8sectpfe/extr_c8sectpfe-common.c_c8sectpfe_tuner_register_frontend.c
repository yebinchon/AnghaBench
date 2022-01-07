
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct channel_info {struct dvb_frontend* frontend; } ;
struct c8sectpfei {int tsin_count; int dev; struct channel_info** channel_data; } ;
struct c8sectpfe {int adapter; } ;


 int ENOMEM ;
 struct c8sectpfe* c8sectpfe_create (struct c8sectpfei*,void*,void*) ;
 int c8sectpfe_frontend_attach (struct dvb_frontend**,struct c8sectpfe*,struct channel_info*,int) ;
 int c8sectpfe_tuner_unregister_frontend (struct c8sectpfe*,struct c8sectpfei*) ;
 int dev_err (int ,char*,int) ;
 int dvb_register_frontend (int *,struct dvb_frontend*) ;

int c8sectpfe_tuner_register_frontend(struct c8sectpfe **c8sectpfe,
    struct c8sectpfei *fei,
    void *start_feed,
    void *stop_feed)
{
 struct channel_info *tsin;
 struct dvb_frontend *frontend;
 int n, res;

 *c8sectpfe = c8sectpfe_create(fei, start_feed, stop_feed);
 if (!*c8sectpfe)
  return -ENOMEM;

 for (n = 0; n < fei->tsin_count; n++) {
  tsin = fei->channel_data[n];

  res = c8sectpfe_frontend_attach(&frontend, *c8sectpfe, tsin, n);
  if (res)
   goto err;

  res = dvb_register_frontend(&c8sectpfe[0]->adapter, frontend);
  if (res < 0) {
   dev_err(fei->dev, "dvb_register_frontend failed (%d)\n",
    res);
   goto err;
  }

  tsin->frontend = frontend;
 }

 return 0;

err:
 c8sectpfe_tuner_unregister_frontend(*c8sectpfe, fei);
 return res;
}
