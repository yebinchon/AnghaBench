
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int lock; } ;
struct venus_core {int * ops; int * priv; } ;


 int kfree (struct venus_hfi_device*) ;
 int mutex_destroy (int *) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_interface_queues_release (struct venus_hfi_device*) ;

void venus_hfi_destroy(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);

 venus_interface_queues_release(hdev);
 mutex_destroy(&hdev->lock);
 kfree(hdev);
 core->priv = ((void*)0);
 core->ops = ((void*)0);
}
