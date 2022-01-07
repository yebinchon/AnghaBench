
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2port_ops {int blocks_num; int block_size; int (* access ) (struct c2port_device*,int ) ;int c2d_set; int c2d_get; int c2ck_set; int c2d_dir; } ;
struct c2port_device {int id; int dev; scalar_t__ flash_access; scalar_t__ access; int mutex; struct c2port_ops* ops; int name; } ;
struct TYPE_2__ {int size; } ;


 int C2PORT_NAME_LEN ;
 int EINVAL ;
 int ENOMEM ;
 struct c2port_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__ bin_attr_flash_data ;
 int c2port_class ;
 int c2port_idr ;
 int c2port_idr_lock ;
 int dev_info (int ,char*,char*,...) ;
 int dev_set_drvdata (int ,struct c2port_device*) ;
 int device_create (int ,int *,int ,struct c2port_device*,char*,int) ;
 int idr_alloc (int *,struct c2port_device*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int kfree (struct c2port_device*) ;
 struct c2port_device* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strncpy (int ,char*,int ) ;
 int stub1 (struct c2port_device*,int ) ;
 scalar_t__ unlikely (int) ;

struct c2port_device *c2port_device_register(char *name,
     struct c2port_ops *ops, void *devdata)
{
 struct c2port_device *c2dev;
 int ret;

 if (unlikely(!ops) || unlikely(!ops->access) || unlikely(!ops->c2d_dir) || unlikely(!ops->c2ck_set) || unlikely(!ops->c2d_get) || unlikely(!ops->c2d_set))


  return ERR_PTR(-EINVAL);

 c2dev = kmalloc(sizeof(struct c2port_device), GFP_KERNEL);
 if (unlikely(!c2dev))
  return ERR_PTR(-ENOMEM);

 idr_preload(GFP_KERNEL);
 spin_lock_irq(&c2port_idr_lock);
 ret = idr_alloc(&c2port_idr, c2dev, 0, 0, GFP_NOWAIT);
 spin_unlock_irq(&c2port_idr_lock);
 idr_preload_end();

 if (ret < 0)
  goto error_idr_alloc;
 c2dev->id = ret;

 bin_attr_flash_data.size = ops->blocks_num * ops->block_size;

 c2dev->dev = device_create(c2port_class, ((void*)0), 0, c2dev,
       "c2port%d", c2dev->id);
 if (IS_ERR(c2dev->dev)) {
  ret = PTR_ERR(c2dev->dev);
  goto error_device_create;
 }
 dev_set_drvdata(c2dev->dev, c2dev);

 strncpy(c2dev->name, name, C2PORT_NAME_LEN);
 c2dev->ops = ops;
 mutex_init(&c2dev->mutex);


 c2dev->access = c2dev->flash_access = 0;
 ops->access(c2dev, 0);

 dev_info(c2dev->dev, "C2 port %s added\n", name);
 dev_info(c2dev->dev, "%s flash has %d blocks x %d bytes "
    "(%d bytes total)\n",
    name, ops->blocks_num, ops->block_size,
    ops->blocks_num * ops->block_size);

 return c2dev;

error_device_create:
 spin_lock_irq(&c2port_idr_lock);
 idr_remove(&c2port_idr, c2dev->id);
 spin_unlock_irq(&c2port_idr_lock);

error_idr_alloc:
 kfree(c2dev);

 return ERR_PTR(ret);
}
