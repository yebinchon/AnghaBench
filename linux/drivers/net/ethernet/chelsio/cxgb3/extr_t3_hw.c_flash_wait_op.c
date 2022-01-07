
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EAGAIN ;
 int SF_RD_STATUS ;
 int msleep (int) ;
 int sf1_read (struct adapter*,int,int ,int*) ;
 int sf1_write (struct adapter*,int,int,int ) ;

__attribute__((used)) static int flash_wait_op(struct adapter *adapter, int attempts, int delay)
{
 int ret;
 u32 status;

 while (1) {
  if ((ret = sf1_write(adapter, 1, 1, SF_RD_STATUS)) != 0 ||
      (ret = sf1_read(adapter, 1, 0, &status)) != 0)
   return ret;
  if (!(status & 1))
   return 0;
  if (--attempts == 0)
   return -EAGAIN;
  if (delay)
   msleep(delay);
 }
}
