
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xc2028_ctrl {int max_len; int disable_power_mgmt; int mts; void* demod; int fname; } ;
struct TYPE_2__ {int udelay; } ;
struct cx88_core {int boardnr; TYPE_1__ i2c_algo; } ;
 int XC2028_DEFAULT_FIRMWARE ;
 void* XC3028_FE_OREN538 ;
 void* XC3028_FE_ZARLINK456 ;
 int memset (struct xc2028_ctrl*,int ,int) ;

void cx88_setup_xc3028(struct cx88_core *core, struct xc2028_ctrl *ctl)
{
 memset(ctl, 0, sizeof(*ctl));

 ctl->fname = XC2028_DEFAULT_FIRMWARE;
 ctl->max_len = 64;

 switch (core->boardnr) {
 case 133:

  if (core->i2c_algo.udelay < 16)
   core->i2c_algo.udelay = 16;
  break;
 case 137:
 case 129:
  ctl->demod = XC3028_FE_ZARLINK456;
  break;
 case 135:
 case 138:
  ctl->demod = XC3028_FE_OREN538;
  break;
 case 136:







  ctl->disable_power_mgmt = 1;
  break;
 case 128:
 case 131:
 case 132:



  break;
 case 134:
 case 130:
  ctl->demod = XC3028_FE_ZARLINK456;
  ctl->mts = 1;
  break;
 default:
  ctl->demod = XC3028_FE_OREN538;
  ctl->mts = 1;
 }
}
