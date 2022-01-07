
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sd {int * rotation_thread; } ;


 int ARRAY_SIZE (scalar_t__**) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ SENSOR ;
 int * kthread_create (int ,struct sd*,char*) ;
 int m5602_write_bridge (struct sd*,scalar_t__,scalar_t__) ;
 int m5602_write_sensor (struct sd*,scalar_t__,scalar_t__*,int) ;
 int rotation_thread_function ;
 int s5k83a_set_led_indication (struct sd*,int) ;
 scalar_t__** start_s5k83a ;
 int wake_up_process (int *) ;

int s5k83a_start(struct sd *sd)
{
 int i, err = 0;




 sd->rotation_thread = kthread_create(rotation_thread_function,
          sd, "rotation thread");
 if (IS_ERR(sd->rotation_thread)) {
  err = PTR_ERR(sd->rotation_thread);
  sd->rotation_thread = ((void*)0);
  return err;
 }
 wake_up_process(sd->rotation_thread);


 for (i = 0; i < ARRAY_SIZE(start_s5k83a) && !err; i++) {
  u8 data[2] = {start_s5k83a[i][2], start_s5k83a[i][3]};
  if (start_s5k83a[i][0] == SENSOR)
   err = m5602_write_sensor(sd, start_s5k83a[i][1],
    data, 2);
  else
   err = m5602_write_bridge(sd, start_s5k83a[i][1],
    data[0]);
 }
 if (err < 0)
  return err;

 return s5k83a_set_led_indication(sd, 1);
}
