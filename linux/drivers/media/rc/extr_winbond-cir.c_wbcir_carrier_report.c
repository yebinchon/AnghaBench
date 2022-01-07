
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ ebase; scalar_t__ pulse_duration; int dev; } ;
struct ir_raw_event {int carrier_report; int carrier; } ;


 int DIV_ROUND_CLOSEST (unsigned int,scalar_t__) ;
 int WBCIR_CNTR_EN ;
 int WBCIR_CNTR_R ;
 scalar_t__ WBCIR_REG_ECEIR_CCTL ;
 scalar_t__ WBCIR_REG_ECEIR_CNT_HI ;
 scalar_t__ WBCIR_REG_ECEIR_CNT_LO ;
 int inb (scalar_t__) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 int wbcir_set_bits (scalar_t__,int,int) ;

__attribute__((used)) static void
wbcir_carrier_report(struct wbcir_data *data)
{
 unsigned counter = inb(data->ebase + WBCIR_REG_ECEIR_CNT_LO) |
   inb(data->ebase + WBCIR_REG_ECEIR_CNT_HI) << 8;

 if (counter > 0 && counter < 0xffff) {
  struct ir_raw_event ev = {
   .carrier_report = 1,
   .carrier = DIV_ROUND_CLOSEST(counter * 1000000u,
      data->pulse_duration)
  };

  ir_raw_event_store(data->dev, &ev);
 }


 data->pulse_duration = 0;
 wbcir_set_bits(data->ebase + WBCIR_REG_ECEIR_CCTL, WBCIR_CNTR_R,
      WBCIR_CNTR_EN | WBCIR_CNTR_R);
 wbcir_set_bits(data->ebase + WBCIR_REG_ECEIR_CCTL, WBCIR_CNTR_EN,
      WBCIR_CNTR_EN | WBCIR_CNTR_R);
}
