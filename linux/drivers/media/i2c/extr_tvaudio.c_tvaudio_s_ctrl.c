
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct CHIPSTATE {size_t input; TYPE_2__* balance; TYPE_1__* volume; int muted; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* treblefunc ) (int ) ;int treblereg; int (* bassfunc ) (int ) ;int bassreg; int (* volfunc ) (unsigned int) ;int rightreg; int leftreg; int inputmask; int * inputmap; int inputreg; int inputmute; } ;
struct TYPE_4__ {unsigned int val; } ;
struct TYPE_3__ {unsigned int val; } ;


 int EINVAL ;




 int chip_write (struct CHIPSTATE*,int ,int ) ;
 int chip_write_masked (struct CHIPSTATE*,int ,int ,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 switch (ctrl->id) {
 case 130:
  chip->muted = ctrl->val;
  if (chip->muted)
   chip_write_masked(chip,desc->inputreg,desc->inputmute,desc->inputmask);
  else
   chip_write_masked(chip,desc->inputreg,
     desc->inputmap[chip->input],desc->inputmask);
  return 0;
 case 128: {
  u32 volume, balance;
  u32 left, right;

  volume = chip->volume->val;
  balance = chip->balance->val;
  left = (min(65536U - balance, 32768U) * volume) / 32768U;
  right = (min(balance, 32768U) * volume) / 32768U;

  chip_write(chip, desc->leftreg, desc->volfunc(left));
  chip_write(chip, desc->rightreg, desc->volfunc(right));
  return 0;
 }
 case 131:
  chip_write(chip, desc->bassreg, desc->bassfunc(ctrl->val));
  return 0;
 case 129:
  chip_write(chip, desc->treblereg, desc->treblefunc(ctrl->val));
  return 0;
 }
 return -EINVAL;
}
