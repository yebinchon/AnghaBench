
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_input {scalar_t__ new_frame_deadline; } ;


 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void tw5864_input_deadline_update(struct tw5864_input *input)
{
 input->new_frame_deadline = jiffies + msecs_to_jiffies(1000);
}
