
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rain {int serio; int dev; } ;


 int dev_dbg (int ,char*,char const*) ;
 int serio_write (int ,char) ;

__attribute__((used)) static int rain_send(struct rain *rain, const char *command)
{
 int err = serio_write(rain->serio, '!');

 dev_dbg(rain->dev, "send: %s\n", command);
 while (!err && *command)
  err = serio_write(rain->serio, *command++);
 if (!err)
  err = serio_write(rain->serio, '~');

 return err;
}
