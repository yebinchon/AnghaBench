
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int ll_state; } ;


 unsigned long EINVAL ;




 int ST_LL_AWAKE ;
 int ll_device_want_to_sleep (struct st_data_s*) ;
 int ll_device_want_to_wakeup (struct st_data_s*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;

unsigned long st_ll_sleep_state(struct st_data_s *st_data,
 unsigned char cmd)
{
 switch (cmd) {
 case 130:
  pr_debug("sleep indication recvd");
  ll_device_want_to_sleep(st_data);
  break;
 case 131:
  pr_err("sleep ack rcvd: host shouldn't");
  break;
 case 128:
  pr_debug("wake indication recvd");
  ll_device_want_to_wakeup(st_data);
  break;
 case 129:
  pr_debug("wake ack rcvd");
  st_data->ll_state = ST_LL_AWAKE;
  break;
 default:
  pr_err(" unknown input/state ");
  return -EINVAL;
 }
 return 0;
}
