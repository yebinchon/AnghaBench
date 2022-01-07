
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ADV7180_STATUS1_IN_LOCK ;
 int V4L2_IN_ST_NO_SIGNAL ;

__attribute__((used)) static u32 adv7180_status_to_v4l2(u8 status1)
{
 if (!(status1 & ADV7180_STATUS1_IN_LOCK))
  return V4L2_IN_ST_NO_SIGNAL;

 return 0;
}
