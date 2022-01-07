
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {int parser_state; int rem; int cmd; int* buf_in; int pulse_tunit; TYPE_2__* rc; int dev; int pulse_count; TYPE_1__ flags; } ;
struct ir_raw_event {int pulse; int duration; int timeout; } ;
struct TYPE_5__ {int timeout; } ;




 int MCE_CMD_PORT_IR ;
 int MCE_COMMAND_IRDATA ;
 int MCE_PACKET_LENGTH_MASK ;
 int MCE_PORT_MASK ;
 int MCE_PULSE_BIT ;
 int MCE_PULSE_MASK ;
 int MCE_TIME_UNIT ;


 int US_TO_NS (int ) ;
 int dev_dbg (int ,char*,...) ;
 int ir_raw_event_handle (TYPE_2__*) ;
 int ir_raw_event_store_with_filter (TYPE_2__*,struct ir_raw_event*) ;
 int mceusb_cmd_datasize (int,int) ;
 int mceusb_dev_printdata (struct mceusb_dev*,int*,int,int,int,int) ;
 int mceusb_handle_command (struct mceusb_dev*,int) ;
 int unlikely (int) ;

__attribute__((used)) static void mceusb_process_ir_data(struct mceusb_dev *ir, int buf_len)
{
 struct ir_raw_event rawir = {};
 bool event = 0;
 int i = 0;


 if (ir->flags.microsoft_gen1)
  i = 2;


 if (buf_len <= i)
  return;

 for (; i < buf_len; i++) {
  switch (ir->parser_state) {
  case 128:
   ir->rem = mceusb_cmd_datasize(ir->cmd, ir->buf_in[i]);
   mceusb_dev_printdata(ir, ir->buf_in, buf_len, i - 1,
          ir->rem + 2, 0);
   mceusb_handle_command(ir, i);
   ir->parser_state = 131;
   break;
  case 129:
   ir->rem--;
   rawir.pulse = ((ir->buf_in[i] & MCE_PULSE_BIT) != 0);
   rawir.duration = (ir->buf_in[i] & MCE_PULSE_MASK);
   if (unlikely(!rawir.duration)) {
    dev_dbg(ir->dev, "nonsensical irdata %02x with duration 0",
     ir->buf_in[i]);
    break;
   }
   if (rawir.pulse) {
    ir->pulse_tunit += rawir.duration;
    ir->pulse_count++;
   }
   rawir.duration *= US_TO_NS(MCE_TIME_UNIT);

   dev_dbg(ir->dev, "Storing %s %u ns (%02x)",
    rawir.pulse ? "pulse" : "space",
    rawir.duration, ir->buf_in[i]);

   if (ir_raw_event_store_with_filter(ir->rc, &rawir))
    event = 1;
   break;
  case 131:
   ir->rem--;
   break;
  case 130:


   ir->cmd = ir->buf_in[i];
   if ((ir->cmd == MCE_CMD_PORT_IR) ||
       ((ir->cmd & MCE_PORT_MASK) !=
        MCE_COMMAND_IRDATA)) {
    ir->parser_state = 128;
    continue;
   }
   ir->rem = (ir->cmd & MCE_PACKET_LENGTH_MASK);
   mceusb_dev_printdata(ir, ir->buf_in, buf_len,
          i, ir->rem + 1, 0);
   if (ir->rem) {
    ir->parser_state = 129;
   } else {
    struct ir_raw_event ev = {
     .timeout = 1,
     .duration = ir->rc->timeout
    };

    if (ir_raw_event_store_with_filter(ir->rc,
           &ev))
     event = 1;
    ir->pulse_tunit = 0;
    ir->pulse_count = 0;
   }
   break;
  }

  if (ir->parser_state != 130 && !ir->rem)
   ir->parser_state = 130;
 }
 if (event) {
  dev_dbg(ir->dev, "processed IR data");
  ir_raw_event_handle(ir->rc);
 }
}
