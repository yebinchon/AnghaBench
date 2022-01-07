
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vnic_dev {int notify_sz; int notify_copy; int notify; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int vnic_dev_notify_ready(struct vnic_dev *vdev)
{
 u32 *words;
 unsigned int nwords = vdev->notify_sz / 4;
 unsigned int i;
 u32 csum;

 if (!vdev->notify || !vdev->notify_sz)
  return 0;

 do {
  csum = 0;
  memcpy(&vdev->notify_copy, vdev->notify, vdev->notify_sz);
  words = (u32 *)&vdev->notify_copy;
  for (i = 1; i < nwords; i++)
   csum += words[i];
 } while (csum != words[0]);

 return 1;
}
