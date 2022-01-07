
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b44 {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int dev_addr; } ;


 int B44_CAM_CTRL ;
 int CAM_CTRL_ENABLE ;
 int IFF_PROMISC ;
 int __b44_cam_write (struct b44*,int ,int ) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;

__attribute__((used)) static void __b44_set_mac_addr(struct b44 *bp)
{
 bw32(bp, B44_CAM_CTRL, 0);
 if (!(bp->dev->flags & IFF_PROMISC)) {
  u32 val;

  __b44_cam_write(bp, bp->dev->dev_addr, 0);
  val = br32(bp, B44_CAM_CTRL);
  bw32(bp, B44_CAM_CTRL, val | CAM_CTRL_ENABLE);
 }
}
