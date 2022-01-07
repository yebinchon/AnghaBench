
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;
typedef int reset ;
typedef int gpp_ctl_cfg ;
typedef int clock_config ;
typedef int capt_range_cfg ;
typedef int agc_cfg ;
typedef int adc_ctl_1_cfg ;
 int mt352_write (struct dvb_frontend*,int const*,int) ;
 int udelay (int) ;

__attribute__((used)) static int dvico_fusionhdtv_demod_init(struct dvb_frontend *fe)
{
 static const u8 clock_config[] = { 130, 0x38, 0x39 };
 static const u8 reset[] = { 128, 0x80 };
 static const u8 adc_ctl_1_cfg[] = { 133, 0x40 };
 static const u8 agc_cfg[] = { 132, 0x24, 0x20 };
 static const u8 gpp_ctl_cfg[] = { 129, 0x33 };
 static const u8 capt_range_cfg[] = { 131, 0x32 };

 mt352_write(fe, clock_config, sizeof(clock_config));
 udelay(200);
 mt352_write(fe, reset, sizeof(reset));
 mt352_write(fe, adc_ctl_1_cfg, sizeof(adc_ctl_1_cfg));

 mt352_write(fe, agc_cfg, sizeof(agc_cfg));
 mt352_write(fe, gpp_ctl_cfg, sizeof(gpp_ctl_cfg));
 mt352_write(fe, capt_range_cfg, sizeof(capt_range_cfg));
 return 0;
}
