
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ttusbir {int rc; } ;
struct ir_raw_event {int pulse; int duration; } ;


 int NS_PER_BIT ;
 void* NS_PER_BYTE ;
 int ffs (unsigned int) ;
 unsigned int ffz (unsigned int) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;

__attribute__((used)) static void ttusbir_process_ir_data(struct ttusbir *tt, uint8_t *buf)
{
 struct ir_raw_event rawir = {};
 unsigned i, v, b;
 bool event = 0;

 for (i = 0; i < 128; i++) {
  v = buf[i] & 0xfe;
  switch (v) {
  case 0xfe:
   rawir.pulse = 0;
   rawir.duration = NS_PER_BYTE;
   if (ir_raw_event_store_with_filter(tt->rc, &rawir))
    event = 1;
   break;
  case 0:
   rawir.pulse = 1;
   rawir.duration = NS_PER_BYTE;
   if (ir_raw_event_store_with_filter(tt->rc, &rawir))
    event = 1;
   break;
  default:

   if (v & 2) {
    b = ffz(v | 1);
    rawir.pulse = 1;
   } else {
    b = ffs(v) - 1;
    rawir.pulse = 0;
   }

   rawir.duration = NS_PER_BIT * (8 - b);
   if (ir_raw_event_store_with_filter(tt->rc, &rawir))
    event = 1;

   rawir.pulse = !rawir.pulse;
   rawir.duration = NS_PER_BIT * b;
   if (ir_raw_event_store_with_filter(tt->rc, &rawir))
    event = 1;
   break;
  }
 }


 if (event)
  ir_raw_event_handle(tt->rc);
}
