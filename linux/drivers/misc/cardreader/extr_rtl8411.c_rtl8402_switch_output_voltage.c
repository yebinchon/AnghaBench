
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int BPP_ASIC_2V0 ;
 int BPP_TUNED18_SHIFT_8402 ;
 int rtl8411_do_switch_output_voltage (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rtl8402_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 return rtl8411_do_switch_output_voltage(pcr, voltage,
   BPP_TUNED18_SHIFT_8402, BPP_ASIC_2V0);
}
