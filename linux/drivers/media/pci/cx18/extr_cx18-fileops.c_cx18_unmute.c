
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx18 {int ana_capturing; } ;


 int CX18_CPU_SET_AUDIO_MUTE ;
 int CX18_CPU_SET_MISC_PARAMETERS ;
 int CX18_DEBUG_INFO (char*) ;
 int CX18_ERR (char*) ;
 scalar_t__ CX18_INVALID_TASK_HANDLE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ cx18_find_handle (struct cx18*) ;
 int cx18_msleep_timeout (int,int ) ;
 int cx18_vapi (struct cx18*,int ,int,scalar_t__,int) ;

void cx18_unmute(struct cx18 *cx)
{
 u32 h;
 if (atomic_read(&cx->ana_capturing)) {
  h = cx18_find_handle(cx);
  if (h != CX18_INVALID_TASK_HANDLE) {
   cx18_msleep_timeout(100, 0);
   cx18_vapi(cx, CX18_CPU_SET_MISC_PARAMETERS, 2, h, 12);
   cx18_vapi(cx, CX18_CPU_SET_AUDIO_MUTE, 2, h, 0);
  } else
   CX18_ERR("Can't find valid task handle for unmute\n");
 }
 CX18_DEBUG_INFO("Unmute\n");
}
