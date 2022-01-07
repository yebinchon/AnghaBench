
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct mxb {int cur_mode; } ;


 int s_tuner ;
 int tda9840_call (struct mxb*,int ,int ,struct v4l2_tuner*) ;
 int tuner ;

__attribute__((used)) static void mxb_update_audmode(struct mxb *mxb)
{
 struct v4l2_tuner t = {
  .audmode = mxb->cur_mode,
 };

 tda9840_call(mxb, tuner, s_tuner, &t);
}
