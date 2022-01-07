
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ir_raw_event {int pulse; int duration; } ;
struct au0828_rc {int rc; TYPE_1__* dev; } ;
typedef int buf ;
struct TYPE_2__ {int dev_state; } ;


 int AU8522_UNIT ;
 int DEV_DISCONNECTED ;
 int NEC_START_PULSE ;
 int NEC_START_SPACE ;
 int RC5_START_PULSE ;
 int au8522_rc_clear (struct au0828_rc*,int,int) ;
 int au8522_rc_read (struct au0828_rc*,int,int,unsigned char*,int) ;
 int au8522_rc_set (struct au0828_rc*,int,int) ;
 int dprintk (int,char*,...) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int au0828_get_key_au8522(struct au0828_rc *ir)
{
 unsigned char buf[40];
 struct ir_raw_event rawir = {};
 int i, j, rc;
 int prv_bit, bit, width;
 bool first = 1;


 if (test_bit(DEV_DISCONNECTED, &ir->dev->dev_state))
  return 0;


 rc = au8522_rc_read(ir, 0xe1, -1, buf, 1);
 if (rc < 0 || !(buf[0] & (1 << 4))) {

  au8522_rc_set(ir, 0xe0, 1 << 4);
  return 0;
 }


 rc = au8522_rc_read(ir, 0xe3, 0x11, buf, sizeof(buf));


 if (rc < 0)
  return rc;


 au8522_rc_clear(ir, 0xe0, 1 << 4);


 au8522_rc_set(ir, 0xe0, 1 << 4);

 dprintk(16, "RC data received: %*ph\n", 40, buf);

 prv_bit = (buf[0] >> 7) & 0x01;
 width = 0;
 for (i = 0; i < sizeof(buf); i++) {
  for (j = 7; j >= 0; j--) {
   bit = (buf[i] >> j) & 0x01;
   if (bit == prv_bit) {
    width++;
    continue;
   }
   if (first) {
    first = 0;

    rawir.pulse = 1;
    if (width > NEC_START_SPACE - 2 &&
        width < NEC_START_SPACE + 2) {

     rawir.duration = NEC_START_PULSE;
     dprintk(16, "Storing NEC start %s with duration %d",
      rawir.pulse ? "pulse" : "space",
      rawir.duration);
    } else {

     rawir.duration = RC5_START_PULSE;
     dprintk(16, "Storing RC5 start %s with duration %d",
      rawir.pulse ? "pulse" : "space",
      rawir.duration);
    }
    ir_raw_event_store(ir->rc, &rawir);
   }

   rawir.pulse = prv_bit ? 0 : 1;
   rawir.duration = AU8522_UNIT * width;
   dprintk(16, "Storing %s with duration %d",
    rawir.pulse ? "pulse" : "space",
    rawir.duration);
   ir_raw_event_store(ir->rc, &rawir);

   width = 1;
   prv_bit = bit;
  }
 }

 rawir.pulse = prv_bit ? 0 : 1;
 rawir.duration = AU8522_UNIT * width;
 dprintk(16, "Storing end %s with duration %d",
  rawir.pulse ? "pulse" : "space",
  rawir.duration);
 ir_raw_event_store(ir->rc, &rawir);

 ir_raw_event_handle(ir->rc);

 return 1;
}
