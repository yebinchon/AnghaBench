
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int dummy; } ;


 int SR_RX_RDY ;
 short cosa_getdata8 (struct cosa_data*) ;
 int cosa_getstatus (struct cosa_data*) ;
 int pr_info (char*,int) ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static int get_wait_data(struct cosa_data *cosa)
{
 int retries = 1000;

 while (--retries) {

  if (cosa_getstatus(cosa) & SR_RX_RDY) {
   short r;
   r = cosa_getdata8(cosa);




   return r;
  }

  schedule_timeout_interruptible(1);
 }
 pr_info("timeout in get_wait_data (status 0x%x)\n",
  cosa_getstatus(cosa));
 return -1;
}
