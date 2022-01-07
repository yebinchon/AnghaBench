
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int upd64031a_read (struct v4l2_subdev*,int) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int upd64031a_log_status(struct v4l2_subdev *sd)
{
 v4l2_info(sd, "Status: SA00=0x%02x SA01=0x%02x\n",
   upd64031a_read(sd, 0), upd64031a_read(sd, 1));
 return 0;
}
