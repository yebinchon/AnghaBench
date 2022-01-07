
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ generic_mode; int aud_input; int vid_input; int fw_wait; int fw_work; } ;


 int DEFINE_WAIT (int ) ;
 int INIT_WORK (int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 struct workqueue_struct* create_singlethread_workqueue (char*) ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_std_setup (struct i2c_client*) ;
 int cx25840_vconfig_apply (struct i2c_client*) ;
 int cx25840_work_handler ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int finish_wait (int *,int *) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int init_dll1 (struct i2c_client*) ;
 int init_dll2 (struct i2c_client*) ;
 int init_waitqueue_head (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int queue_work (struct workqueue_struct*,int *) ;
 int schedule () ;
 int set_input (struct i2c_client*,int ,int ) ;
 struct cx25840_state* to_state (int ) ;
 int wait ;

__attribute__((used)) static void cx25840_initialize(struct i2c_client *client)
{
 DEFINE_WAIT(wait);
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 struct workqueue_struct *q;



 cx25840_and_or(client, 0x803, ~0x10, 0x00);




 cx25840_write(client, 0x000, 0x04);

 init_dll1(client);
 init_dll2(client);
 cx25840_write(client, 0x136, 0x0a);

 cx25840_write(client, 0x13c, 0x01);
 cx25840_write(client, 0x13c, 0x00);







 INIT_WORK(&state->fw_work, cx25840_work_handler);
 init_waitqueue_head(&state->fw_wait);
 q = create_singlethread_workqueue("cx25840_fw");
 if (q) {
  prepare_to_wait(&state->fw_wait, &wait, TASK_UNINTERRUPTIBLE);
  queue_work(q, &state->fw_work);
  schedule();
  finish_wait(&state->fw_wait, &wait);
  destroy_workqueue(q);
 }


 cx25840_write(client, 0x115, 0x8c);
 cx25840_write(client, 0x116, 0x07);
 cx25840_write(client, 0x118, 0x02);

 cx25840_write(client, 0x4a5, 0x80);
 cx25840_write(client, 0x4a5, 0x00);
 cx25840_write(client, 0x402, 0x00);

 cx25840_and_or(client, 0x401, ~0x18, 0);
 cx25840_and_or(client, 0x4a2, ~0x10, 0x10);


 cx25840_write(client, 0x8d3, 0x1f);
 cx25840_write(client, 0x8e3, 0x03);

 cx25840_std_setup(client);


 cx25840_write(client, 0x914, 0xa0);
 cx25840_write(client, 0x918, 0xa0);
 cx25840_write(client, 0x919, 0x01);


 cx25840_write(client, 0x809, 0x04);

 cx25840_write(client, 0x8cf, 0x0f);


 set_input(client, state->vid_input, state->aud_input);

 if (state->generic_mode)
  cx25840_vconfig_apply(client);


 cx25840_and_or(client, 0x803, ~0x10, 0x10);
}
