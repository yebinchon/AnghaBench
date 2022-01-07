
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;
struct pulse8 {int ping_eeprom_work; int adap; } ;


 int cancel_delayed_work_sync (int *) ;
 int cec_unregister_adapter (int ) ;
 int dev_info (int *,char*) ;
 int kfree (struct pulse8*) ;
 int serio_close (struct serio*) ;
 struct pulse8* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void pulse8_disconnect(struct serio *serio)
{
 struct pulse8 *pulse8 = serio_get_drvdata(serio);

 cec_unregister_adapter(pulse8->adap);
 cancel_delayed_work_sync(&pulse8->ping_eeprom_work);
 dev_info(&serio->dev, "disconnected\n");
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(pulse8);
}
