
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;
typedef int mt352_reset ;
typedef int mt352_gpp_ctl_cfg ;
typedef int mt352_clock_config ;
typedef int mt352_capt_range_cfg ;
typedef int mt352_agc_cfg ;
typedef int mt352_adc_ctl_1_cfg ;


 int mt352_write (struct dvb_frontend*,int*,int) ;
 int udelay (int) ;

__attribute__((used)) static int thomson_dtt7579_demod_init(struct dvb_frontend* fe)
{
 static u8 mt352_clock_config [] = { 0x89, 0x38, 0x38 };
 static u8 mt352_reset [] = { 0x50, 0x80 };
 static u8 mt352_adc_ctl_1_cfg [] = { 0x8E, 0x40 };
 static u8 mt352_agc_cfg [] = { 0x67, 0x28, 0x20 };
 static u8 mt352_gpp_ctl_cfg [] = { 0x8C, 0x33 };
 static u8 mt352_capt_range_cfg[] = { 0x75, 0x32 };

 mt352_write(fe, mt352_clock_config, sizeof(mt352_clock_config));
 udelay(2000);
 mt352_write(fe, mt352_reset, sizeof(mt352_reset));
 mt352_write(fe, mt352_adc_ctl_1_cfg, sizeof(mt352_adc_ctl_1_cfg));

 mt352_write(fe, mt352_agc_cfg, sizeof(mt352_agc_cfg));
 mt352_write(fe, mt352_gpp_ctl_cfg, sizeof(mt352_gpp_ctl_cfg));
 mt352_write(fe, mt352_capt_range_cfg, sizeof(mt352_capt_range_cfg));

 return 0;
}
