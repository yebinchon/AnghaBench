
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {unsigned int* sigdata; int * lens; int sig_size; } ;
struct redrat3_dev {TYPE_2__* rc; TYPE_1__ irdata; scalar_t__ wideband; struct device* dev; } ;
struct ir_raw_event {int carrier_report; int pulse; int timeout; int duration; scalar_t__ carrier; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int timeout; } ;


 int IR_MAX_DURATION ;
 int US_TO_NS (unsigned int) ;
 unsigned int be16_to_cpu (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 unsigned int get_unaligned_be16 (int *) ;
 int ir_raw_event_handle (TYPE_2__*) ;
 int ir_raw_event_store (TYPE_2__*,struct ir_raw_event*) ;
 int ir_raw_event_store_with_filter (TYPE_2__*,struct ir_raw_event*) ;
 unsigned int redrat3_len_to_us (unsigned int) ;
 scalar_t__ redrat3_val_to_mod_freq (TYPE_1__*) ;

__attribute__((used)) static void redrat3_process_ir_data(struct redrat3_dev *rr3)
{
 struct ir_raw_event rawir = {};
 struct device *dev;
 unsigned int i, sig_size, single_len, offset, val;
 u32 mod_freq;

 dev = rr3->dev;

 mod_freq = redrat3_val_to_mod_freq(&rr3->irdata);
 dev_dbg(dev, "Got mod_freq of %u\n", mod_freq);
 if (mod_freq && rr3->wideband) {
  struct ir_raw_event ev = {
   .carrier_report = 1,
   .carrier = mod_freq
  };

  ir_raw_event_store(rr3->rc, &ev);
 }


 sig_size = be16_to_cpu(rr3->irdata.sig_size);
 for (i = 0; i < sig_size; i++) {
  offset = rr3->irdata.sigdata[i];
  val = get_unaligned_be16(&rr3->irdata.lens[offset]);
  single_len = redrat3_len_to_us(val);


  if (i % 2)
   rawir.pulse = 0;
  else
   rawir.pulse = 1;

  rawir.duration = US_TO_NS(single_len);

  rawir.duration = (rawir.duration > IR_MAX_DURATION) ?
     IR_MAX_DURATION : rawir.duration;

  dev_dbg(dev, "storing %s with duration %d (i: %d)\n",
   rawir.pulse ? "pulse" : "space", rawir.duration, i);
  ir_raw_event_store_with_filter(rr3->rc, &rawir);
 }


 rawir.pulse = 0;
 rawir.timeout = 1;
 rawir.duration = rr3->rc->timeout;
 dev_dbg(dev, "storing trailing timeout with duration %d\n",
       rawir.duration);
 ir_raw_event_store_with_filter(rr3->rc, &rawir);

 dev_dbg(dev, "calling ir_raw_event_handle\n");
 ir_raw_event_handle(rr3->rc);
}
