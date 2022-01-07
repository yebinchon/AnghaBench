
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct serio {int dummy; } ;
struct rain {scalar_t__ cmd_reply; int dev; } ;
struct cec_log_addrs {int dummy; } ;


 int dev_info (int ,char*,scalar_t__) ;
 int rain_send_and_wait (struct rain*,char*,char*) ;

__attribute__((used)) static int rain_setup(struct rain *rain, struct serio *serio,
   struct cec_log_addrs *log_addrs, u16 *pa)
{
 int err;

 err = rain_send_and_wait(rain, "R", "REV");
 if (err)
  return err;
 dev_info(rain->dev, "Firmware version %s\n", rain->cmd_reply + 4);

 err = rain_send_and_wait(rain, "Q 1", "QTY");
 if (err)
  return err;
 err = rain_send_and_wait(rain, "c0000", "CFG");
 if (err)
  return err;
 return rain_send_and_wait(rain, "A F 0000", "ADR");
}
