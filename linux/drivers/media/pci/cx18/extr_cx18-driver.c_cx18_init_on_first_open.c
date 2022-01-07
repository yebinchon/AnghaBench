
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int std; int active_input; int tuner_std; int sd_av; int i_flags; } ;


 int CX18_APU_ENCODING_METHOD_MPEG ;
 int CX18_APU_RESETAI ;
 int CX18_APU_START ;
 int CX18_APU_STOP ;
 int CX18_F_I_FAILED ;
 int CX18_F_I_INITED ;
 int CX18_F_I_LOADED_FW ;
 int CX18_WARN (char*) ;
 int ENXIO ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC_M ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_TUNER_ANALOG_TV ;
 int core ;
 scalar_t__ cx18_firmware_init (struct cx18*) ;
 int cx18_s_frequency (int *,struct cx18_open_id*,struct v4l2_frequency*) ;
 int cx18_s_input (int *,struct cx18_open_id*,int) ;
 int cx18_s_std (int *,struct cx18_open_id*,int) ;
 int cx18_vapi (struct cx18*,int ,int,...) ;
 int load_fw ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_subdev_call (int ,int ,int ) ;

int cx18_init_on_first_open(struct cx18 *cx)
{
 int video_input;
 int fw_retry_count = 3;
 struct v4l2_frequency vf;
 struct cx18_open_id fh;
 v4l2_std_id std;

 fh.cx = cx;

 if (test_bit(CX18_F_I_FAILED, &cx->i_flags))
  return -ENXIO;

 if (test_and_set_bit(CX18_F_I_INITED, &cx->i_flags))
  return 0;

 while (--fw_retry_count > 0) {

  if (cx18_firmware_init(cx) == 0)
   break;
  if (fw_retry_count > 1)
   CX18_WARN("Retry loading firmware\n");
 }

 if (fw_retry_count == 0) {
  set_bit(CX18_F_I_FAILED, &cx->i_flags);
  return -ENXIO;
 }
 set_bit(CX18_F_I_LOADED_FW, &cx->i_flags);
 cx18_vapi(cx, CX18_APU_START, 2, CX18_APU_ENCODING_METHOD_MPEG|0xb9, 0);
 cx18_vapi(cx, CX18_APU_RESETAI, 0);
 cx18_vapi(cx, CX18_APU_STOP, 1, CX18_APU_ENCODING_METHOD_MPEG);

 fw_retry_count = 3;
 while (--fw_retry_count > 0) {

  if (cx18_firmware_init(cx) == 0)
   break;
  if (fw_retry_count > 1)
   CX18_WARN("Retry loading firmware\n");
 }

 if (fw_retry_count == 0) {
  set_bit(CX18_F_I_FAILED, &cx->i_flags);
  return -ENXIO;
 }
 cx18_vapi(cx, CX18_APU_START, 2, CX18_APU_ENCODING_METHOD_MPEG|0xb9, 0);
 cx18_vapi(cx, CX18_APU_RESETAI, 0);
 cx18_vapi(cx, CX18_APU_STOP, 1, CX18_APU_ENCODING_METHOD_MPEG);


 v4l2_subdev_call(cx->sd_av, core, load_fw);

 vf.tuner = 0;
 vf.type = V4L2_TUNER_ANALOG_TV;
 vf.frequency = 6400;



 if (cx->std == V4L2_STD_NTSC_M_JP)
  vf.frequency = 1460;
 else if (cx->std & V4L2_STD_NTSC_M)
  vf.frequency = 1076;

 video_input = cx->active_input;
 cx->active_input++;
 cx18_s_input(((void*)0), &fh, video_input);



 cx->std++;
 std = (cx->tuner_std == V4L2_STD_ALL) ? V4L2_STD_NTSC_M : cx->tuner_std;
 cx18_s_std(((void*)0), &fh, std);
 cx18_s_frequency(((void*)0), &fh, &vf);
 return 0;
}
