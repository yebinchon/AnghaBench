
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tuner_setup {unsigned int mode_mask; scalar_t__ type; int addr; int tuner_callback; } ;
struct TYPE_3__ {scalar_t__ tuner_type; int tuner_addr; scalar_t__ has_analog; } ;
struct au0828_dev {int v4l2_dev; TYPE_1__ board; int i2c_adap; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ AU0828_VMUX_UNDEFINED ;
 TYPE_2__ AUVI_INPUT (int ) ;
 scalar_t__ TUNER_ABSENT ;
 unsigned int T_ANALOG_TV ;
 int au0828_tuner_callback ;
 int pr_err (char*) ;
 int s_type_addr ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct tuner_setup*) ;
 struct v4l2_subdev* v4l2_i2c_new_subdev (int *,int *,char*,int,int *) ;

void au0828_card_analog_fe_setup(struct au0828_dev *dev)
{
}
