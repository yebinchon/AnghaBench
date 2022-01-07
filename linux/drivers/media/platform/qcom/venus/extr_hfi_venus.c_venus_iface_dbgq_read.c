
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int lock; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venus_iface_dbgq_read_nolock (struct venus_hfi_device*,void*) ;

__attribute__((used)) static int venus_iface_dbgq_read(struct venus_hfi_device *hdev, void *pkt)
{
 int ret;

 if (!pkt)
  return -EINVAL;

 mutex_lock(&hdev->lock);
 ret = venus_iface_dbgq_read_nolock(hdev, pkt);
 mutex_unlock(&hdev->lock);

 return ret;
}
