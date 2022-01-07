
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int family; int * smpt_ops; int * intr_ops; int * ops; } ;



 int mic_x100_intr_ops ;
 int mic_x100_ops ;
 int mic_x100_smpt_ops ;

__attribute__((used)) static void mic_ops_init(struct mic_device *mdev)
{
 switch (mdev->family) {
 case 128:
  mdev->ops = &mic_x100_ops;
  mdev->intr_ops = &mic_x100_intr_ops;
  mdev->smpt_ops = &mic_x100_smpt_ops;
  break;
 default:
  break;
 }
}
