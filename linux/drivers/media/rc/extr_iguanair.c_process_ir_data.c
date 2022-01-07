
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {int pulse; int duration; } ;
struct iguanair {int* buf_in; int version; int bufsize; int cycle_overhead; int tx_overflow; int rc; int dev; int completion; } ;
 int RX_RESOLUTION ;
 int US_TO_NS (int) ;
 int complete (int *) ;
 int dev_warn (int ,char*,...) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 scalar_t__ ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;

__attribute__((used)) static void process_ir_data(struct iguanair *ir, unsigned len)
{
 if (len >= 4 && ir->buf_in[0] == 0 && ir->buf_in[1] == 0) {
  switch (ir->buf_in[3]) {
  case 133:
   if (len == 6) {
    ir->version = (ir->buf_in[5] << 8) |
       ir->buf_in[4];
    complete(&ir->completion);
   }
   break;
  case 135:
   if (len >= 5) {
    ir->bufsize = ir->buf_in[4];
    complete(&ir->completion);
   }
   break;
  case 134:
   if (len > 5) {
    ir->cycle_overhead = ir->buf_in[5];
    complete(&ir->completion);
   }
   break;
  case 128:
   ir->tx_overflow = 1;

  case 132:
  case 131:
  case 129:
   complete(&ir->completion);
   break;
  case 130:
   dev_warn(ir->dev, "receive overflow\n");
   ir_raw_event_reset(ir->rc);
   break;
  default:
   dev_warn(ir->dev, "control code %02x received\n",
       ir->buf_in[3]);
   break;
  }
 } else if (len >= 7) {
  struct ir_raw_event rawir = {};
  unsigned i;
  bool event = 0;

  for (i = 0; i < 7; i++) {
   if (ir->buf_in[i] == 0x80) {
    rawir.pulse = 0;
    rawir.duration = US_TO_NS(21845);
   } else {
    rawir.pulse = (ir->buf_in[i] & 0x80) == 0;
    rawir.duration = ((ir->buf_in[i] & 0x7f) + 1) *
         RX_RESOLUTION;
   }

   if (ir_raw_event_store_with_filter(ir->rc, &rawir))
    event = 1;
  }

  if (event)
   ir_raw_event_handle(ir->rc);
 }
}
