
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_api_cmd_chain {scalar_t__ cons_idx; scalar_t__ prod_idx; } ;


 int API_CMD_TIMEOUT ;
 int ETIMEDOUT ;
 int api_cmd_status_update (struct hinic_api_cmd_chain*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int wait_for_status_poll(struct hinic_api_cmd_chain *chain)
{
 int err = -ETIMEDOUT;
 unsigned long end;

 end = jiffies + msecs_to_jiffies(API_CMD_TIMEOUT);
 do {
  api_cmd_status_update(chain);


  if (chain->cons_idx == chain->prod_idx) {
   err = 0;
   break;
  }

  msleep(20);
 } while (time_before(jiffies, end));

 return err;
}
