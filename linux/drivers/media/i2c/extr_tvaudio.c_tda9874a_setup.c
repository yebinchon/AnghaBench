
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;
struct TYPE_2__ {int name; int cmd; } ;


 int TDA9874A_AGCGR ;
 int TDA9874A_AMCONR ;
 int TDA9874A_AOSR ;
 int TDA9874A_C1OLAR ;
 int TDA9874A_C2OLAR ;
 int TDA9874A_ESP ;
 int TDA9874A_FMMR ;
 int TDA9874A_GCONR ;
 int TDA9874A_MDACOSR ;
 int TDA9874A_MSR ;
 int TDA9874A_NCONR ;
 int TDA9874A_NLELR ;
 int TDA9874A_NOLAR ;
 int TDA9874A_NUELR ;
 int TDA9874A_SDACOSR ;
 int chip_cmd (struct CHIPSTATE*,char*,int *) ;
 int chip_write (struct CHIPSTATE*,int ,int) ;
 int debug ;
 int tda9874a_ESP ;
 int tda9874a_GCONR ;
 int tda9874a_NCONR ;
 size_t tda9874a_STD ;
 int tda9874a_dic ;
 scalar_t__ tda9874a_mode ;
 TYPE_1__* tda9874a_modelist ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,size_t) ;

__attribute__((used)) static int tda9874a_setup(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;

 chip_write(chip, TDA9874A_AGCGR, 0x00);
 chip_write(chip, TDA9874A_GCONR, tda9874a_GCONR);
 chip_write(chip, TDA9874A_MSR, (tda9874a_mode) ? 0x03:0x02);
 if(tda9874a_dic == 0x11) {
  chip_write(chip, TDA9874A_FMMR, 0x80);
 } else {
  chip_cmd(chip,"tda9874_modelist",&tda9874a_modelist[tda9874a_STD].cmd);
  chip_write(chip, TDA9874A_FMMR, 0x00);
 }
 chip_write(chip, TDA9874A_C1OLAR, 0x00);
 chip_write(chip, TDA9874A_C2OLAR, 0x00);
 chip_write(chip, TDA9874A_NCONR, tda9874a_NCONR);
 chip_write(chip, TDA9874A_NOLAR, 0x00);



 chip_write(chip, TDA9874A_NLELR, 0x14);
 chip_write(chip, TDA9874A_NUELR, 0x50);

 if(tda9874a_dic == 0x11) {
  chip_write(chip, TDA9874A_AMCONR, 0xf9);
  chip_write(chip, TDA9874A_SDACOSR, (tda9874a_mode) ? 0x81:0x80);
  chip_write(chip, TDA9874A_AOSR, 0x80);
  chip_write(chip, TDA9874A_MDACOSR, (tda9874a_mode) ? 0x82:0x80);
  chip_write(chip, TDA9874A_ESP, tda9874a_ESP);
 } else {
  chip_write(chip, TDA9874A_AMCONR, 0xfb);
  chip_write(chip, TDA9874A_SDACOSR, (tda9874a_mode) ? 0x81:0x80);
  chip_write(chip, TDA9874A_AOSR, 0x00);
 }
 v4l2_dbg(1, debug, sd, "tda9874a_setup(): %s [0x%02X].\n",
  tda9874a_modelist[tda9874a_STD].name,tda9874a_STD);
 return 1;
}
