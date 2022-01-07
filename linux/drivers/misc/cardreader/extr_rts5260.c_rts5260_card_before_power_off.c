
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int OUTPUT_3V3 ;
 int rts5260_stop_cmd (struct rtsx_pcr*) ;
 int rts5260_switch_output_voltage (struct rtsx_pcr*,int ) ;

__attribute__((used)) static void rts5260_card_before_power_off(struct rtsx_pcr *pcr)
{
 rts5260_stop_cmd(pcr);
 rts5260_switch_output_voltage(pcr, OUTPUT_3V3);

}
