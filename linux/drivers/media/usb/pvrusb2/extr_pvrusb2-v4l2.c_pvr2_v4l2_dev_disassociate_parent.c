
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; TYPE_1__* v4l2_dev; } ;
struct pvr2_v4l2_dev {TYPE_2__ devbase; } ;
struct TYPE_3__ {int * dev; } ;


 int DPM_ORDER_NONE ;
 int device_move (int *,int *,int ) ;

__attribute__((used)) static void pvr2_v4l2_dev_disassociate_parent(struct pvr2_v4l2_dev *dip)
{
 if (!dip) return;
 if (!dip->devbase.v4l2_dev->dev) return;
 dip->devbase.v4l2_dev->dev = ((void*)0);
 device_move(&dip->devbase.dev, ((void*)0), DPM_ORDER_NONE);
}
