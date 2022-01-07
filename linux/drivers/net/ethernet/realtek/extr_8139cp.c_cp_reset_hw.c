
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {int dev; } ;


 int Cmd ;
 int CmdReset ;
 int cpr8 (int ) ;
 int cpw8 (int ,int) ;
 int netdev_err (int ,char*) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static void cp_reset_hw (struct cp_private *cp)
{
 unsigned work = 1000;

 cpw8(Cmd, CmdReset);

 while (work--) {
  if (!(cpr8(Cmd) & CmdReset))
   return;

  schedule_timeout_uninterruptible(10);
 }

 netdev_err(cp->dev, "hardware reset timeout\n");
}
