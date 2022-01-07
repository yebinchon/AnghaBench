
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ir_raw_event {int pulse; int duration; } ;
struct imon {TYPE_1__* rcdev; int dev; int ir_buf; } ;
struct TYPE_4__ {int idle; } ;


 int BIT_DURATION ;
 int BIT_ULL (int) ;
 int be64_to_cpu (int ) ;
 int dev_dbg (int ,char*,int,...) ;
 int fls64 (int) ;
 int ir_raw_event_handle (TYPE_1__*) ;
 int ir_raw_event_set_idle (TYPE_1__*,int) ;
 int ir_raw_event_store_with_filter (TYPE_1__*,struct ir_raw_event*) ;

__attribute__((used)) static void imon_ir_data(struct imon *imon)
{
 struct ir_raw_event rawir = {};
 u64 data = be64_to_cpu(imon->ir_buf);
 u8 packet_no = data & 0xff;
 int offset = 40;
 int bit;

 if (packet_no == 0xff)
  return;

 dev_dbg(imon->dev, "data: %*ph", 8, &imon->ir_buf);





 data >>= 24;

 do {
  bit = fls64(data & (BIT_ULL(offset) - 1));
  if (bit < offset) {
   dev_dbg(imon->dev, "pulse: %d bits", offset - bit);
   rawir.pulse = 1;
   rawir.duration = (offset - bit) * BIT_DURATION;
   ir_raw_event_store_with_filter(imon->rcdev, &rawir);

   if (bit == 0)
    break;

   offset = bit;
  }






  bit = fls64(~data & (BIT_ULL(offset) - 1));
  dev_dbg(imon->dev, "space: %d bits", offset - bit);

  rawir.pulse = 0;
  rawir.duration = (offset - bit) * BIT_DURATION;
  ir_raw_event_store_with_filter(imon->rcdev, &rawir);

  offset = bit;
 } while (offset > 0);

 if (packet_no == 0x0a && !imon->rcdev->idle) {
  ir_raw_event_set_idle(imon->rcdev, 1);
  ir_raw_event_handle(imon->rcdev);
 }
}
