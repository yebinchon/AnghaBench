
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinfc_host {scalar_t__ command; int dev; } ;


 unsigned long HINFC504_NFC_TIMEOUT ;
 int HINFC504_READY ;
 int HINFC504_STATUS ;
 scalar_t__ NAND_CMD_ERASE2 ;
 int dev_err (int ,char*) ;
 int hinfc_read (struct hinfc_host*,int ) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wait_controller_finished(struct hinfc_host *host)
{
 unsigned long timeout = jiffies + HINFC504_NFC_TIMEOUT;
 int val;

 while (time_before(jiffies, timeout)) {
  val = hinfc_read(host, HINFC504_STATUS);
  if (host->command == NAND_CMD_ERASE2) {

   while (!(val & HINFC504_READY)) {
    usleep_range(500, 1000);
    val = hinfc_read(host, HINFC504_STATUS);
   }
   return;
  }

  if (val & HINFC504_READY)
   return;
 }


 dev_err(host->dev, "Wait NAND controller exec cmd timeout.\n");
}
