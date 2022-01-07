
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int KS_CMDE ;
 int KS_STAT ;
 int debug ;
 int ks0127_read (struct v4l2_subdev*,int ) ;
 int ks0127_write (struct v4l2_subdev*,int,int ) ;
 int msleep (int) ;
 int * reg_defaults ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static void ks0127_init(struct v4l2_subdev *sd)
{
 u8 *table = reg_defaults;
 int i;

 v4l2_dbg(1, debug, sd, "reset\n");
 msleep(1);




 for (i = 1; i < 33; i++)
  ks0127_write(sd, i, table[i]);

 for (i = 35; i < 40; i++)
  ks0127_write(sd, i, table[i]);

 for (i = 41; i < 56; i++)
  ks0127_write(sd, i, table[i]);

 for (i = 58; i < 64; i++)
  ks0127_write(sd, i, table[i]);


 if ((ks0127_read(sd, KS_STAT) & 0x80) == 0) {
  v4l2_dbg(1, debug, sd, "ks0122s found\n");
  return;
 }

 switch (ks0127_read(sd, KS_CMDE) & 0x0f) {
 case 0:
  v4l2_dbg(1, debug, sd, "ks0127 found\n");
  break;

 case 9:
  v4l2_dbg(1, debug, sd, "ks0127B Revision A found\n");
  break;

 default:
  v4l2_dbg(1, debug, sd, "unknown revision\n");
  break;
 }
}
