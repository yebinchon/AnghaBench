
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rc_dev {int const rx_resolution; } ;
struct ir_raw_event {int pulse; int duration; } ;


 int ir_raw_event_store_with_filter (struct rc_dev*,struct ir_raw_event*) ;

__attribute__((used)) static void smi_raw_process(struct rc_dev *rc_dev, const u8 *buffer,
       const u8 length)
{
 struct ir_raw_event rawir = {};
 int cnt;

 for (cnt = 0; cnt < length; cnt++) {
  if (buffer[cnt] & 0x7f) {
   rawir.pulse = (buffer[cnt] & 0x80) == 0;
   rawir.duration = ((buffer[cnt] & 0x7f) +
      (rawir.pulse ? 0 : -1)) *
      rc_dev->rx_resolution;
   ir_raw_event_store_with_filter(rc_dev, &rawir);
  }
 }
}
