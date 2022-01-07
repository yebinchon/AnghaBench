
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* input; } ;
struct cx88_core {int boardnr; TYPE_2__ board; } ;
struct TYPE_3__ {int gpio0; } ;
 int MO_GP0_IO ;
 int MO_GP2_IO ;
 int XC2028_TUNER_RESET ;
 int XC4000_TUNER_RESET ;
 int cx88_xc3028_winfast1800h_callback (struct cx88_core*,int ,int ) ;
 int cx88_xc4000_winfast2000h_plus_callback (struct cx88_core*,int ,int ) ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int msleep (int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void cx88_card_setup_pre_i2c(struct cx88_core *core)
{
 switch (core->boardnr) {
 case 140:
  cx_write(MO_GP0_IO, 0x0000ef88);
  udelay(1000);
  cx_clear(MO_GP0_IO, 0x00000088);
  udelay(50);
  cx_set(MO_GP0_IO, 0x00000088);
  udelay(1000);
  break;

 case 136:
 case 137:
  cx_write(MO_GP2_IO, 0xcf7);
  msleep(50);
  cx_write(MO_GP2_IO, 0xef5);
  msleep(50);
  cx_write(MO_GP2_IO, 0xcf7);
  usleep_range(10000, 20000);
  break;

 case 141:

  cx_set(MO_GP0_IO, 0x00001010);
  break;

 case 132:
 case 139:
 case 138:

  cx_write(MO_GP0_IO, core->board.input[0].gpio0);
  udelay(1000);
  cx_clear(MO_GP0_IO, 0x00000080);
  udelay(50);
  cx_set(MO_GP0_IO, 0x00000080);
  udelay(1000);
  break;

 case 130:
 case 134:
  cx88_xc3028_winfast1800h_callback(core, XC2028_TUNER_RESET, 0);
  break;

 case 133:
 case 131:
 case 129:
 case 128:
  cx88_xc4000_winfast2000h_plus_callback(core,
             XC4000_TUNER_RESET, 0);
  break;

 case 135:
  cx_write(MO_GP0_IO, 0x00003230);
  cx_write(MO_GP0_IO, 0x00003210);
  usleep_range(10000, 20000);
  cx_write(MO_GP0_IO, 0x00001230);
  break;
 }
}
