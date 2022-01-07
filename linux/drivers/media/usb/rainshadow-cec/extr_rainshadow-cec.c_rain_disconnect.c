
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;
struct rain {int adap; int work; } ;


 int cancel_work_sync (int *) ;
 int cec_unregister_adapter (int ) ;
 int dev_info (int *,char*) ;
 int kfree (struct rain*) ;
 int serio_close (struct serio*) ;
 struct rain* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void rain_disconnect(struct serio *serio)
{
 struct rain *rain = serio_get_drvdata(serio);

 cancel_work_sync(&rain->work);
 cec_unregister_adapter(rain->adap);
 dev_info(&serio->dev, "disconnected\n");
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(rain);
}
