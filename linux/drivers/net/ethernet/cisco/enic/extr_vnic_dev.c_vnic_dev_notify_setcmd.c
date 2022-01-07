
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {int notify_sz; scalar_t__ notify_pa; void* notify; } ;
typedef scalar_t__ dma_addr_t ;


 int CMD_NOTIFY ;
 int memset (void*,int ,int) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

__attribute__((used)) static int vnic_dev_notify_setcmd(struct vnic_dev *vdev,
 void *notify_addr, dma_addr_t notify_pa, u16 intr)
{
 u64 a0, a1;
 int wait = 1000;
 int r;

 memset(notify_addr, 0, sizeof(struct vnic_devcmd_notify));
 vdev->notify = notify_addr;
 vdev->notify_pa = notify_pa;

 a0 = (u64)notify_pa;
 a1 = ((u64)intr << 32) & 0x0000ffff00000000ULL;
 a1 += sizeof(struct vnic_devcmd_notify);

 r = vnic_dev_cmd(vdev, CMD_NOTIFY, &a0, &a1, wait);
 vdev->notify_sz = (r == 0) ? (u32)a1 : 0;
 return r;
}
