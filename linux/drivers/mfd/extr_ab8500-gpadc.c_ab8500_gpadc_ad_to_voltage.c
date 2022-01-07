
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ab8500_gpadc {int dev; TYPE_1__* cal_data; } ;
struct TYPE_2__ {int gain; int offset; } ;






 int ADC_CH_ACCDET2_MAX ;
 int ADC_CH_ACCDET2_MIN ;
 int ADC_CH_BKBAT_MAX ;
 int ADC_CH_BKBAT_MIN ;
 int ADC_CH_BTEMP_MAX ;
 int ADC_CH_BTEMP_MIN ;
 int ADC_CH_CHG_I_MAX ;
 int ADC_CH_CHG_I_MIN ;
 int ADC_CH_CHG_V_MAX ;
 int ADC_CH_CHG_V_MIN ;
 int ADC_CH_DIETEMP_MAX ;
 int ADC_CH_DIETEMP_MIN ;
 int ADC_CH_IBAT_MAX ;
 int ADC_CH_IBAT_MIN ;
 int ADC_CH_VBAT_MAX ;
 int ADC_CH_VBAT_MIN ;
 size_t ADC_INPUT_BTEMP ;
 size_t ADC_INPUT_IBAT ;
 size_t ADC_INPUT_VBAT ;
 size_t ADC_INPUT_VMAIN ;
 int ADC_RESOLUTION ;



 int CALIB_SCALE ;
 int CALIB_SHIFT_IBAT ;

 int EINVAL ;
 int dev_err (int ,char*) ;

int ab8500_gpadc_ad_to_voltage(struct ab8500_gpadc *gpadc, u8 channel,
 int ad_value)
{
 int res;

 switch (channel) {
 case 132:

  if (!gpadc->cal_data[ADC_INPUT_VMAIN].gain) {
   res = ADC_CH_CHG_V_MIN + (ADC_CH_CHG_V_MAX -
    ADC_CH_CHG_V_MIN) * ad_value /
    ADC_RESOLUTION;
   break;
  }

  res = (int) (ad_value * gpadc->cal_data[ADC_INPUT_VMAIN].gain +
   gpadc->cal_data[ADC_INPUT_VMAIN].offset) / CALIB_SCALE;
  break;

 case 128:
 case 139:
 case 137:
 case 143:
 case 141:
 case 140:

  if (!gpadc->cal_data[ADC_INPUT_BTEMP].gain) {
   res = ADC_CH_BTEMP_MIN + (ADC_CH_BTEMP_MAX -
    ADC_CH_BTEMP_MIN) * ad_value /
    ADC_RESOLUTION;
   break;
  }

  res = (int) (ad_value * gpadc->cal_data[ADC_INPUT_BTEMP].gain +
   gpadc->cal_data[ADC_INPUT_BTEMP].offset) / CALIB_SCALE;
  break;

 case 134:
 case 130:

  if (!gpadc->cal_data[ADC_INPUT_VBAT].gain) {
   res = ADC_CH_VBAT_MIN + (ADC_CH_VBAT_MAX -
    ADC_CH_VBAT_MIN) * ad_value /
    ADC_RESOLUTION;
   break;
  }

  res = (int) (ad_value * gpadc->cal_data[ADC_INPUT_VBAT].gain +
   gpadc->cal_data[ADC_INPUT_VBAT].offset) / CALIB_SCALE;
  break;

 case 136:
  res = ADC_CH_DIETEMP_MIN +
   (ADC_CH_DIETEMP_MAX - ADC_CH_DIETEMP_MIN) * ad_value /
   ADC_RESOLUTION;
  break;

 case 142:
  res = ADC_CH_ACCDET2_MIN +
   (ADC_CH_ACCDET2_MAX - ADC_CH_ACCDET2_MIN) * ad_value /
   ADC_RESOLUTION;
  break;

 case 129:
  res = ADC_CH_CHG_V_MIN +
   (ADC_CH_CHG_V_MAX - ADC_CH_CHG_V_MIN) * ad_value /
   ADC_RESOLUTION;
  break;

 case 133:
 case 131:
  res = ADC_CH_CHG_I_MIN +
   (ADC_CH_CHG_I_MAX - ADC_CH_CHG_I_MIN) * ad_value /
   ADC_RESOLUTION;
  break;

 case 138:
  res = ADC_CH_BKBAT_MIN +
   (ADC_CH_BKBAT_MAX - ADC_CH_BKBAT_MIN) * ad_value /
   ADC_RESOLUTION;
  break;

 case 135:

  if (!gpadc->cal_data[ADC_INPUT_IBAT].gain) {
   res = ADC_CH_IBAT_MIN + (ADC_CH_IBAT_MAX -
    ADC_CH_IBAT_MIN) * ad_value /
    ADC_RESOLUTION;
   break;
  }

  res = (int) (ad_value * gpadc->cal_data[ADC_INPUT_IBAT].gain +
    gpadc->cal_data[ADC_INPUT_IBAT].offset)
    >> CALIB_SHIFT_IBAT;
  break;

 default:
  dev_err(gpadc->dev,
   "unknown channel, not possible to convert\n");
  res = -EINVAL;
  break;

 }
 return res;
}
