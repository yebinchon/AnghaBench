
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_gpadc {int dev; } ;


 int ab8500_gpadc_ad_to_voltage (struct ab8500_gpadc*,int ,int) ;
 int ab8500_gpadc_read_raw (struct ab8500_gpadc*,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*,int ,...) ;

int ab8500_gpadc_sw_hw_convert(struct ab8500_gpadc *gpadc, u8 channel,
  u8 avg_sample, u8 trig_edge, u8 trig_timer, u8 conv_type)
{
 int ad_value;
 int voltage;

 ad_value = ab8500_gpadc_read_raw(gpadc, channel, avg_sample,
   trig_edge, trig_timer, conv_type);


 if (ad_value < 0)
  ad_value = ab8500_gpadc_read_raw(gpadc, channel, avg_sample,
   trig_edge, trig_timer, conv_type);
 if (ad_value < 0) {
  dev_err(gpadc->dev, "GPADC raw value failed ch: %d\n",
    channel);
  return ad_value;
 }

 voltage = ab8500_gpadc_ad_to_voltage(gpadc, channel, ad_value);
 if (voltage < 0)
  dev_err(gpadc->dev,
   "GPADC to voltage conversion failed ch: %d AD: 0x%x\n",
   channel, ad_value);

 return voltage;
}
