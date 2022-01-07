
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u64 ;
typedef int u32 ;
typedef int u16 ;
struct vnic_dev {int dummy; } ;


 int BUG () ;
 int CMD_DEV_SPEC ;
 int vnic_dev_cmd (struct vnic_dev*,int ,unsigned int*,unsigned int*,int) ;

int vnic_dev_spec(struct vnic_dev *vdev, unsigned int offset, unsigned int size,
 void *value)
{
 u64 a0, a1;
 int wait = 1000;
 int err;

 a0 = offset;
 a1 = size;

 err = vnic_dev_cmd(vdev, CMD_DEV_SPEC, &a0, &a1, wait);

 switch (size) {
 case 1: *(u8 *)value = (u8)a0; break;
 case 2: *(u16 *)value = (u16)a0; break;
 case 4: *(u32 *)value = (u32)a0; break;
 case 8: *(u64 *)value = a0; break;
 default: BUG(); break;
 }

 return err;
}
