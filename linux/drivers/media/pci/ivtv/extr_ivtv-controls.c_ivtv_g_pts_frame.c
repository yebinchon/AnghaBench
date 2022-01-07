
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ivtv {int* last_dec_timing; int i_flags; int decoding; } ;
typedef int s64 ;


 int CX2341X_DEC_GET_TIMING_INFO ;
 int CX2341X_MBOX_MAX_DATA ;
 int EIO ;
 int IVTV_DEBUG_WARN (char*) ;
 int IVTV_F_I_VALID_DEC_TIMINGS ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ ivtv_api (struct ivtv*,int ,int,int*) ;
 int memcpy (int*,int*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int ivtv_g_pts_frame(struct ivtv *itv, s64 *pts, s64 *frame)
{
 u32 data[CX2341X_MBOX_MAX_DATA];

 if (test_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
  *pts = (s64)((u64)itv->last_dec_timing[2] << 32) |
   (u64)itv->last_dec_timing[1];
  *frame = itv->last_dec_timing[0];
  return 0;
 }
 *pts = 0;
 *frame = 0;
 if (atomic_read(&itv->decoding)) {
  if (ivtv_api(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
   IVTV_DEBUG_WARN("GET_TIMING: couldn't read clock\n");
   return -EIO;
  }
  memcpy(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
  set_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
  *pts = (s64)((u64) data[2] << 32) | (u64) data[1];
  *frame = data[0];

 }
 return 0;
}
