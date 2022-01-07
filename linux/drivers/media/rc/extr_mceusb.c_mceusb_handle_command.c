
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u32 ;
struct TYPE_3__ {int rx2; } ;
struct mceusb_dev {int* buf_in; int txports_cabled; int num_txports; int num_rxports; int learning_active; unsigned int pulse_tunit; unsigned int pulse_count; int emver; int tx_mask; int rxports_active; int need_reset; int dev; TYPE_2__* rc; TYPE_1__ flags; int carrier_report_enabled; } ;
struct ir_raw_event {int carrier_report; unsigned int carrier; } ;
struct TYPE_4__ {int timeout; } ;
 int MCE_TIME_UNIT ;
 int US_TO_NS (int) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,int) ;
 int dev_info (int ,char*,char*,int) ;
 int ir_raw_event_store (TYPE_2__*,struct ir_raw_event*) ;

__attribute__((used)) static void mceusb_handle_command(struct mceusb_dev *ir, int index)
{
 struct ir_raw_event rawir = {};
 u8 hi = ir->buf_in[index + 1] & 0xff;
 u8 lo = ir->buf_in[index + 2] & 0xff;
 u32 carrier_cycles;
 u32 cycles_fix;

 switch (ir->buf_in[index]) {

 case 129:
  if ((ir->buf_in[index + 4] & 0xff) == 0x00)
   ir->txports_cabled |= 1 << hi;
  break;


 case 131:
  ir->rc->timeout = US_TO_NS((hi << 8 | lo) * MCE_TIME_UNIT);
  break;
 case 134:
  ir->num_txports = hi;
  ir->num_rxports = lo;
  break;
 case 133:
  if (ir->carrier_report_enabled && ir->learning_active &&
      ir->pulse_tunit > 0) {
   carrier_cycles = (hi << 8 | lo);




   cycles_fix = ir->flags.rx2 == 2 ? ir->pulse_count : 0;
   rawir.carrier_report = 1;
   rawir.carrier = (1000000u / MCE_TIME_UNIT) *
     (carrier_cycles + cycles_fix) /
     ir->pulse_tunit;
   dev_dbg(ir->dev, "RX carrier frequency %u Hz (pulse count = %u, cycles = %u, duration = %u, rx2 = %u)",
    rawir.carrier, ir->pulse_count, carrier_cycles,
    ir->pulse_tunit, ir->flags.rx2);
   ir_raw_event_store(ir->rc, &rawir);
  }
  break;


 case 135:
  ir->emver = hi;
  break;
 case 130:
  ir->tx_mask = hi;
  break;
 case 132:
  ir->learning_active = ((hi & 0x02) == 0x02);
  if (ir->rxports_active != hi) {
   dev_info(ir->dev, "%s-range (0x%x) receiver active",
     ir->learning_active ? "short" : "long", hi);
   ir->rxports_active = hi;
  }
  break;
 case 136:
 case 128:
  ir->need_reset = 1;
  break;
 default:
  break;
 }
}
