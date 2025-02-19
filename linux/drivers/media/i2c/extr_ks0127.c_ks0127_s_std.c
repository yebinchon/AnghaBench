
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct ks0127 {int norm; } ;


 int HZ ;
 int KS_CHROMA ;
 int KS_DEMOD ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_SECAM ;
 int debug ;
 int ks0127_and_or (struct v4l2_subdev*,int ,int,int) ;
 int ks0127_read (struct v4l2_subdev*,int ) ;
 int schedule_timeout_interruptible (int) ;
 struct ks0127* to_ks0127 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int ks0127_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct ks0127 *ks = to_ks0127(sd);


 ks0127_and_or(sd, KS_DEMOD, 0xf0, 0x00);

 ks->norm = std;
 if (std & V4L2_STD_NTSC) {
  v4l2_dbg(1, debug, sd,
   "s_std: NTSC_M\n");
  ks0127_and_or(sd, KS_CHROMA, 0x9f, 0x20);
 } else if (std & V4L2_STD_PAL_N) {
  v4l2_dbg(1, debug, sd,
   "s_std: NTSC_N (fixme)\n");
  ks0127_and_or(sd, KS_CHROMA, 0x9f, 0x40);
 } else if (std & V4L2_STD_PAL) {
  v4l2_dbg(1, debug, sd,
   "s_std: PAL_N\n");
  ks0127_and_or(sd, KS_CHROMA, 0x9f, 0x20);
 } else if (std & V4L2_STD_PAL_M) {
  v4l2_dbg(1, debug, sd,
   "s_std: PAL_M (fixme)\n");
  ks0127_and_or(sd, KS_CHROMA, 0x9f, 0x40);
 } else if (std & V4L2_STD_SECAM) {
  v4l2_dbg(1, debug, sd,
   "s_std: SECAM\n");


  ks0127_and_or(sd, KS_CHROMA, 0xdf, 0x20);
  ks0127_and_or(sd, KS_DEMOD, 0xf0, 0x00);
  schedule_timeout_interruptible(HZ/10+1);


  if (!(ks0127_read(sd, KS_DEMOD) & 0x40))

   ks0127_and_or(sd, KS_DEMOD, 0xf0, 0x0f);
 } else {
  v4l2_dbg(1, debug, sd, "s_std: Unknown norm %llx\n",
          (unsigned long long)std);
 }
 return 0;
}
