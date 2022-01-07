
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int jpegqual; } ;


 int reg_w (struct sd*,int,int) ;
 int v4l2_ctrl_grab (int ,int) ;

__attribute__((used)) static void w9968cf_stop0(struct sd *sd)
{
 v4l2_ctrl_grab(sd->jpegqual, 0);
 reg_w(sd, 0x39, 0x0000);
 reg_w(sd, 0x16, 0x0000);
}
