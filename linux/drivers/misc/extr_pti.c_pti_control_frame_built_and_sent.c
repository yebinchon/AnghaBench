
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pti_masterchannel {int channel; int master; } ;


 int CONTROL_FRAME_LEN ;
 int CONTROL_ID ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 int in_interrupt () ;
 int pti_control_channel ;
 int pti_write_to_aperture (struct pti_masterchannel*,int *,int ) ;
 int snprintf (int *,int,char const*,int ,int,char const*) ;
 int strlen (int *) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void pti_control_frame_built_and_sent(struct pti_masterchannel *mc,
          const char *thread_name)
{




 char comm[TASK_COMM_LEN];
 struct pti_masterchannel mccontrol = {.master = CONTROL_ID,
           .channel = 0};
 const char *thread_name_p;
 const char *control_format = "%3d %3d %s";
 u8 control_frame[CONTROL_FRAME_LEN];

 if (!thread_name) {
  if (!in_interrupt())
   get_task_comm(comm, current);
  else
   strncpy(comm, "Interrupt", TASK_COMM_LEN);


  comm[TASK_COMM_LEN-1] = 0;
  thread_name_p = comm;
 } else {
  thread_name_p = thread_name;
 }

 mccontrol.channel = pti_control_channel;
 pti_control_channel = (pti_control_channel + 1) & 0x7f;

 snprintf(control_frame, CONTROL_FRAME_LEN, control_format, mc->master,
  mc->channel, thread_name_p);
 pti_write_to_aperture(&mccontrol, control_frame, strlen(control_frame));
}
