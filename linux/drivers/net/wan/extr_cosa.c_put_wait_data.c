
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int num; } ;


 int SR_TX_RDY ;
 int cosa_getstatus (struct cosa_data*) ;
 int cosa_putdata8 (struct cosa_data*,int) ;
 int pr_info (char*,int,...) ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static int put_wait_data(struct cosa_data *cosa, int data)
{
 int retries = 1000;
 while (--retries) {

  if (cosa_getstatus(cosa) & SR_TX_RDY) {
   cosa_putdata8(cosa, data);



   return 0;
  }




 }
 pr_info("cosa%d: timeout in put_wait_data (status 0x%x)\n",
  cosa->num, cosa_getstatus(cosa));
 return -1;
}
