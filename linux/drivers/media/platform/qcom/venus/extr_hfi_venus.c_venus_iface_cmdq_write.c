
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venus_iface_cmdq_write_nolock (struct venus_hfi_device*,void*) ;

__attribute__((used)) static int venus_iface_cmdq_write(struct venus_hfi_device *hdev, void *pkt)
{
 int ret;

 mutex_lock(&hdev->lock);
 ret = venus_iface_cmdq_write_nolock(hdev, pkt);
 mutex_unlock(&hdev->lock);

 return ret;
}
