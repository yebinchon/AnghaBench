
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct saa6588 {int buf_size; int last_blocknum; int work; scalar_t__ data_available_for_read; int read_queue; scalar_t__ rd_index; scalar_t__ wr_index; scalar_t__ block_count; int lock; struct v4l2_subdev sd; int * buffer; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int bufblocks ;
 void* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 int saa6588_configure (struct saa6588*) ;
 int saa6588_ops ;
 int saa6588_work ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_init (int *) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int saa6588_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct saa6588 *s;
 struct v4l2_subdev *sd;

 v4l_info(client, "saa6588 found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 s = devm_kzalloc(&client->dev, sizeof(*s), GFP_KERNEL);
 if (s == ((void*)0))
  return -ENOMEM;

 s->buf_size = bufblocks * 3;

 s->buffer = devm_kzalloc(&client->dev, s->buf_size, GFP_KERNEL);
 if (s->buffer == ((void*)0))
  return -ENOMEM;
 sd = &s->sd;
 v4l2_i2c_subdev_init(sd, client, &saa6588_ops);
 spin_lock_init(&s->lock);
 s->block_count = 0;
 s->wr_index = 0;
 s->rd_index = 0;
 s->last_blocknum = 0xff;
 init_waitqueue_head(&s->read_queue);
 s->data_available_for_read = 0;

 saa6588_configure(s);


 INIT_DELAYED_WORK(&s->work, saa6588_work);
 schedule_delayed_work(&s->work, 0);
 return 0;
}
