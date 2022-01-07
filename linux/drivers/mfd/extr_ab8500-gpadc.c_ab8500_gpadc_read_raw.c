
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_gpadc {int dummy; } ;


 int ab8500_gpadc_double_read_raw (struct ab8500_gpadc*,int ,int ,int ,int ,int ,int *) ;

int ab8500_gpadc_read_raw(struct ab8500_gpadc *gpadc, u8 channel,
  u8 avg_sample, u8 trig_edge, u8 trig_timer, u8 conv_type)
{
 return ab8500_gpadc_double_read_raw(gpadc, channel, avg_sample,
         trig_edge, trig_timer, conv_type,
         ((void*)0));
}
