
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;


 int IBAT_VIRTUAL_CHANNEL ;
 int MAIN_BAT_V ;
 int VBAT_MEAS_AND_IBAT ;
 int ab8500_gpadc_ad_to_voltage (struct ab8500_gpadc*,int ,int) ;
 int ab8500_gpadc_double_read_raw (struct ab8500_gpadc*,int ,int ,int ,int ,int ,int*) ;
 struct ab8500_gpadc* ab8500_gpadc_get (char*) ;
 int avg_sample ;
 int conv_type ;
 int seq_printf (struct seq_file*,char*,int,int,int,int) ;
 int trig_edge ;
 int trig_timer ;

__attribute__((used)) static int ab8540_gpadc_vbat_meas_and_ibat_show(struct seq_file *s, void *p)
{
 int vbat_meas_raw;
 int vbat_meas_convert;
 int ibat_raw;
 int ibat_convert;
 struct ab8500_gpadc *gpadc;

 gpadc = ab8500_gpadc_get("ab8500-gpadc.0");
 vbat_meas_raw = ab8500_gpadc_double_read_raw(gpadc, VBAT_MEAS_AND_IBAT,
  avg_sample, trig_edge, trig_timer, conv_type, &ibat_raw);
 vbat_meas_convert = ab8500_gpadc_ad_to_voltage(gpadc, MAIN_BAT_V,
  vbat_meas_raw);
 ibat_convert = ab8500_gpadc_ad_to_voltage(gpadc, IBAT_VIRTUAL_CHANNEL,
  ibat_raw);

 seq_printf(s,
     "%d,0x%X\n"
     "%d,0x%X\n",
     vbat_meas_convert, vbat_meas_raw,
     ibat_convert, ibat_raw);

 return 0;
}
