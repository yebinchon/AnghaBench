
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int ETIMEDOUT ;
 int STATUS_BUSY ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int spinand_read_status (struct spinand_device*,int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int spinand_wait(struct spinand_device *spinand, u8 *s)
{
 unsigned long timeo = jiffies + msecs_to_jiffies(400);
 u8 status;
 int ret;

 do {
  ret = spinand_read_status(spinand, &status);
  if (ret)
   return ret;

  if (!(status & STATUS_BUSY))
   goto out;
 } while (time_before(jiffies, timeo));





 ret = spinand_read_status(spinand, &status);
 if (ret)
  return ret;

out:
 if (s)
  *s = status;

 return status & STATUS_BUSY ? -ETIMEDOUT : 0;
}
