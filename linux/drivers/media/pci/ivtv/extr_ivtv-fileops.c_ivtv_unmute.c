
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int capturing; } ;


 int CX2341X_ENC_MISC ;
 int CX2341X_ENC_MUTE_AUDIO ;
 int IVTV_DEBUG_INFO (char*) ;
 scalar_t__ atomic_read (int *) ;
 int ivtv_msleep_timeout (int,int ) ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;

void ivtv_unmute(struct ivtv *itv)
{
 if (atomic_read(&itv->capturing)) {
  ivtv_msleep_timeout(100, 0);
  ivtv_vapi(itv, CX2341X_ENC_MISC, 1, 12);
  ivtv_vapi(itv, CX2341X_ENC_MUTE_AUDIO, 1, 0);
 }
 IVTV_DEBUG_INFO("Unmute\n");
}
