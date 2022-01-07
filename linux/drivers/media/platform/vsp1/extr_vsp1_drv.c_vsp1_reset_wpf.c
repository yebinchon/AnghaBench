
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_device {int dev; } ;


 int ETIMEDOUT ;
 int VI6_SRESET ;
 int VI6_SRESET_SRTS (unsigned int) ;
 int VI6_STATUS ;
 int VI6_STATUS_SYS_ACT (unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int usleep_range (int,int) ;
 int vsp1_read (struct vsp1_device*,int ) ;
 int vsp1_write (struct vsp1_device*,int ,int ) ;

int vsp1_reset_wpf(struct vsp1_device *vsp1, unsigned int index)
{
 unsigned int timeout;
 u32 status;

 status = vsp1_read(vsp1, VI6_STATUS);
 if (!(status & VI6_STATUS_SYS_ACT(index)))
  return 0;

 vsp1_write(vsp1, VI6_SRESET, VI6_SRESET_SRTS(index));
 for (timeout = 10; timeout > 0; --timeout) {
  status = vsp1_read(vsp1, VI6_STATUS);
  if (!(status & VI6_STATUS_SYS_ACT(index)))
   break;

  usleep_range(1000, 2000);
 }

 if (!timeout) {
  dev_err(vsp1->dev, "failed to reset wpf.%u\n", index);
  return -ETIMEDOUT;
 }

 return 0;
}
