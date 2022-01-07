
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {scalar_t__ notify_sz; scalar_t__ notify_pa; int * notify; } ;


 int CMD_NOTIFY ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

__attribute__((used)) static int vnic_dev_notify_unsetcmd(struct vnic_dev *vdev)
{
 u64 a0, a1;
 int wait = 1000;
 int err;

 a0 = 0;
 a1 = 0x0000ffff00000000ULL;
 a1 += sizeof(struct vnic_devcmd_notify);

 err = vnic_dev_cmd(vdev, CMD_NOTIFY, &a0, &a1, wait);
 vdev->notify = ((void*)0);
 vdev->notify_pa = 0;
 vdev->notify_sz = 0;

 return err;
}
