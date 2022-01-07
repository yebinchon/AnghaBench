
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int dev; } ;


 int DM9000_EPCR ;
 unsigned int EPCR_ERRE ;
 int dev_dbg (int ,char*) ;
 unsigned int dm9000_read_locked (struct board_info*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int dm9000_wait_eeprom(struct board_info *db)
{
 unsigned int status;
 int timeout = 8;
 while (1) {
  status = dm9000_read_locked(db, DM9000_EPCR);

  if ((status & EPCR_ERRE) == 0)
   break;

  msleep(1);

  if (timeout-- < 0) {
   dev_dbg(db->dev, "timeout waiting EEPROM\n");
   break;
  }
 }

 return 0;
}
