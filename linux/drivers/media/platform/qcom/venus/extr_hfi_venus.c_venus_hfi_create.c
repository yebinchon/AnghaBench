
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int suspended; struct venus_core* core; int lock; } ;
struct venus_core {int core_caps; int * ops; struct venus_hfi_device* priv; } ;


 int DEC_MULTI_STREAM_CAPABILITY ;
 int ENC_DEINTERLACE_CAPABILITY ;
 int ENC_ROTATION_CAPABILITY ;
 int ENC_SCALING_CAPABILITY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct venus_hfi_device*) ;
 struct venus_hfi_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int venus_hfi_ops ;
 int venus_interface_queues_init (struct venus_hfi_device*) ;

int venus_hfi_create(struct venus_core *core)
{
 struct venus_hfi_device *hdev;
 int ret;

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return -ENOMEM;

 mutex_init(&hdev->lock);

 hdev->core = core;
 hdev->suspended = 1;
 core->priv = hdev;
 core->ops = &venus_hfi_ops;
 core->core_caps = ENC_ROTATION_CAPABILITY | ENC_SCALING_CAPABILITY |
     ENC_DEINTERLACE_CAPABILITY |
     DEC_MULTI_STREAM_CAPABILITY;

 ret = venus_interface_queues_init(hdev);
 if (ret)
  goto err_kfree;

 return 0;

err_kfree:
 kfree(hdev);
 core->priv = ((void*)0);
 core->ops = ((void*)0);
 return ret;
}
