
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {int input; scalar_t__ muted; struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; int inputmask; int * inputmap; int inputreg; } ;


 int CHIP_HAS_INPUTSEL ;
 int EINVAL ;
 int chip_write_masked (struct CHIPSTATE*,int ,int ,int ) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 if (!(desc->flags & CHIP_HAS_INPUTSEL))
  return 0;
 if (input >= 4)
  return -EINVAL;

 chip->input = input;
 if (chip->muted)
  return 0;
 chip_write_masked(chip, desc->inputreg,
   desc->inputmap[chip->input], desc->inputmask);
 return 0;
}
