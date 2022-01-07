
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65010_board {int (* teardown ) (struct i2c_client*,int ) ;int context; } ;
struct tps65010 {int file; int work; } ;
struct i2c_client {scalar_t__ irq; int name; int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int debugfs_remove (int ) ;
 int dev_dbg (int *,char*,char*,int ,int) ;
 struct tps65010_board* dev_get_platdata (int *) ;
 int free_irq (scalar_t__,struct tps65010*) ;
 struct tps65010* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct i2c_client*,int ) ;
 int * the_tps ;

__attribute__((used)) static int tps65010_remove(struct i2c_client *client)
{
 struct tps65010 *tps = i2c_get_clientdata(client);
 struct tps65010_board *board = dev_get_platdata(&client->dev);

 if (board && board->teardown) {
  int status = board->teardown(client, board->context);
  if (status < 0)
   dev_dbg(&client->dev, "board %s %s err %d\n",
    "teardown", client->name, status);
 }
 if (client->irq > 0)
  free_irq(client->irq, tps);
 cancel_delayed_work_sync(&tps->work);
 debugfs_remove(tps->file);
 the_tps = ((void*)0);
 return 0;
}
