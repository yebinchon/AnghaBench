
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ab8500_gpadc {int dummy; } ;


 int ACC_DETECT2 ;
 int ab8500_gpadc_ad_to_voltage (struct ab8500_gpadc*,int ,int) ;
 struct ab8500_gpadc* ab8500_gpadc_get (char*) ;
 int ab8500_gpadc_read_raw (struct ab8500_gpadc*,int ,int ,int ,int ,int ) ;
 int avg_sample ;
 int conv_type ;
 int seq_printf (struct seq_file*,char*,int,int) ;
 int trig_edge ;
 int trig_timer ;

__attribute__((used)) static int ab8500_gpadc_acc_detect2_show(struct seq_file *s, void *p)
{
 int acc_detect2_raw;
 int acc_detect2_convert;
 struct ab8500_gpadc *gpadc;

 gpadc = ab8500_gpadc_get("ab8500-gpadc.0");
 acc_detect2_raw = ab8500_gpadc_read_raw(gpadc, ACC_DETECT2,
  avg_sample, trig_edge, trig_timer, conv_type);
 acc_detect2_convert = ab8500_gpadc_ad_to_voltage(gpadc,
  ACC_DETECT2, acc_detect2_raw);

 seq_printf(s, "%d,0x%X\n", acc_detect2_convert, acc_detect2_raw);

 return 0;
}
