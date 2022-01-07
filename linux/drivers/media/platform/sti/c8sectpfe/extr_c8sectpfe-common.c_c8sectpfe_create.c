
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct c8sectpfei {int tsin_count; int dev; } ;
struct TYPE_7__ {struct c8sectpfei* priv; } ;
struct c8sectpfe {int num_feeds; TYPE_3__ adapter; TYPE_1__* demux; int device; int lock; } ;
struct TYPE_6__ {int tsin_index; struct c8sectpfei* c8sectpfei; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (int ,char*,int,...) ;
 int dvb_register_adapter (TYPE_3__*,char*,int ,int ,short*) ;
 int dvb_unregister_adapter (TYPE_3__*) ;
 int kfree (struct c8sectpfe*) ;
 struct c8sectpfe* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int register_dvb (TYPE_1__*,TYPE_3__*,void*,void*,struct c8sectpfei*) ;
 int unregister_dvb (TYPE_1__*) ;

__attribute__((used)) static struct c8sectpfe *c8sectpfe_create(struct c8sectpfei *fei,
    void *start_feed,
    void *stop_feed)
{
 struct c8sectpfe *c8sectpfe;
 int result;
 int i, j;

 short int ids[] = { -1 };

 c8sectpfe = kzalloc(sizeof(struct c8sectpfe), GFP_KERNEL);
 if (!c8sectpfe)
  goto err1;

 mutex_init(&c8sectpfe->lock);

 c8sectpfe->device = fei->dev;

 result = dvb_register_adapter(&c8sectpfe->adapter, "STi c8sectpfe",
     THIS_MODULE, fei->dev, ids);
 if (result < 0) {
  dev_err(fei->dev, "dvb_register_adapter failed (errno = %d)\n",
   result);
  goto err2;
 }

 c8sectpfe->adapter.priv = fei;

 for (i = 0; i < fei->tsin_count; i++) {

  c8sectpfe->demux[i].tsin_index = i;
  c8sectpfe->demux[i].c8sectpfei = fei;

  result = register_dvb(&c8sectpfe->demux[i], &c8sectpfe->adapter,
    start_feed, stop_feed, fei);
  if (result < 0) {
   dev_err(fei->dev,
    "register_dvb feed=%d failed (errno = %d)\n",
    result, i);


   for (j = 0; j < i; j++)
    unregister_dvb(&c8sectpfe->demux[j]);
   goto err3;
  }
 }

 c8sectpfe->num_feeds = fei->tsin_count;

 return c8sectpfe;
err3:
 dvb_unregister_adapter(&c8sectpfe->adapter);
err2:
 kfree(c8sectpfe);
err1:
 return ((void*)0);
}
