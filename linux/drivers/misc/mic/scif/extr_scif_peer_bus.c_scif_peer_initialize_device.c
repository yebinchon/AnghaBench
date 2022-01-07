
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * bus; int release; int parent; } ;
struct scif_peer_dev {int dnode; TYPE_3__ dev; } ;
struct scif_dev {int node; TYPE_1__* sdev; int spdev; } ;
struct TYPE_10__ {int parent; } ;
struct TYPE_8__ {int conflock; int maxid; int total; } ;
struct TYPE_7__ {TYPE_6__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_6__*,char*,int ,int) ;
 int dev_set_name (TYPE_3__*,char*,int ) ;
 int device_initialize (TYPE_3__*) ;
 int get_device (TYPE_3__*) ;
 struct scif_peer_dev* kzalloc (int,int ) ;
 int max_t (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct scif_peer_dev*) ;
 TYPE_2__ scif_info ;
 int scif_peer_bus ;
 int scif_peer_release_dev ;
 int u32 ;

__attribute__((used)) static int scif_peer_initialize_device(struct scif_dev *scifdev)
{
 struct scif_peer_dev *spdev;
 int ret;

 spdev = kzalloc(sizeof(*spdev), GFP_KERNEL);
 if (!spdev) {
  ret = -ENOMEM;
  goto err;
 }

 spdev->dev.parent = scifdev->sdev->dev.parent;
 spdev->dev.release = scif_peer_release_dev;
 spdev->dnode = scifdev->node;
 spdev->dev.bus = &scif_peer_bus;
 dev_set_name(&spdev->dev, "scif_peer-dev%u", spdev->dnode);

 device_initialize(&spdev->dev);
 get_device(&spdev->dev);
 rcu_assign_pointer(scifdev->spdev, spdev);

 mutex_lock(&scif_info.conflock);
 scif_info.total++;
 scif_info.maxid = max_t(u32, spdev->dnode, scif_info.maxid);
 mutex_unlock(&scif_info.conflock);
 return 0;
err:
 dev_err(&scifdev->sdev->dev,
  "dnode %d: initialize_device rc %d\n", scifdev->node, ret);
 return ret;
}
