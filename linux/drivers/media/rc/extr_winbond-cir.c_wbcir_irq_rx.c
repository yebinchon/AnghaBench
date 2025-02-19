
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbcir_data {scalar_t__ rxstate; unsigned int pulse_duration; int dev; scalar_t__ carrier_report_enabled; scalar_t__ sbase; } ;
struct pnp_dev {int dummy; } ;
struct ir_raw_event {int pulse; int duration; } ;


 int US_TO_NS (unsigned int) ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 scalar_t__ WBCIR_REG_SP3_RXDATA ;
 scalar_t__ WBCIR_RXSTATE_ERROR ;
 int WBCIR_RX_AVAIL ;
 int inb (scalar_t__) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;

__attribute__((used)) static void
wbcir_irq_rx(struct wbcir_data *data, struct pnp_dev *device)
{
 u8 irdata;
 struct ir_raw_event rawir = {};
 unsigned duration;


 while (inb(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL) {
  irdata = inb(data->sbase + WBCIR_REG_SP3_RXDATA);
  if (data->rxstate == WBCIR_RXSTATE_ERROR)
   continue;

  duration = ((irdata & 0x7F) + 1) *
   (data->carrier_report_enabled ? 2 : 10);
  rawir.pulse = irdata & 0x80 ? 0 : 1;
  rawir.duration = US_TO_NS(duration);

  if (rawir.pulse)
   data->pulse_duration += duration;

  ir_raw_event_store_with_filter(data->dev, &rawir);
 }

 ir_raw_event_handle(data->dev);
}
