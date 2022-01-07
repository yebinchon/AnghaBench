
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int temperature_table ;
struct ddb_link {int overtemperature_error; int temp_lock; struct ddb* dev; TYPE_1__* info; int temp_tab; int nr; } ;
struct ddb {int dev; } ;
struct TYPE_2__ {int tempmon_irq; } ;


 int TEMPMON_CONTROL ;
 int TEMPMON_CONTROL_AUTOSCAN ;
 int TEMPMON_CONTROL_INTENABLE ;
 int TEMPMON_CONTROL_OVERTEMP ;
 int TEMPMON_FANCONTROL ;
 int ddb_irq_set (struct ddb*,int ,int ,int ,struct ddb_link*) ;
 int ddblreadl (struct ddb_link*,int ) ;
 int ddblwritel (struct ddb_link*,int,int ) ;
 int dev_info (int ,char*) ;
 int memcpy (int ,int*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int temp_handler ;
 int tempmon_setfan (struct ddb_link*) ;

__attribute__((used)) static int tempmon_init(struct ddb_link *link, int first_time)
{
 struct ddb *dev = link->dev;
 int status = 0;
 u32 l = link->nr;

 spin_lock_irq(&link->temp_lock);
 if (first_time) {
  static u8 temperature_table[11] = {
   30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80 };

  memcpy(link->temp_tab, temperature_table,
         sizeof(temperature_table));
 }
 ddb_irq_set(dev, l, link->info->tempmon_irq, temp_handler, link);
 ddblwritel(link, (TEMPMON_CONTROL_OVERTEMP | TEMPMON_CONTROL_AUTOSCAN |
     TEMPMON_CONTROL_INTENABLE),
     TEMPMON_CONTROL);
 ddblwritel(link, (3 << 8), TEMPMON_FANCONTROL);

 link->overtemperature_error =
  ((ddblreadl(link, TEMPMON_CONTROL) &
   TEMPMON_CONTROL_OVERTEMP) != 0);
 if (link->overtemperature_error) {
  dev_info(link->dev->dev, "Over temperature condition\n");
  status = -1;
 }
 tempmon_setfan(link);
 spin_unlock_irq(&link->temp_lock);
 return status;
}
