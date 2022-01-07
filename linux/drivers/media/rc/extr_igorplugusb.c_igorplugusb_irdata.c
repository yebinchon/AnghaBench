
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ir_raw_event {int duration; unsigned int pulse; } ;
struct igorplugusb {unsigned int* buf_in; TYPE_1__* rc; int dev; } ;
struct TYPE_3__ {int timeout; } ;


 unsigned int HEADERLEN ;
 int SET_INFRABUFFER_EMPTY ;
 int dev_dbg (int ,char*,unsigned int,unsigned int*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;
 int igorplugusb_cmd (struct igorplugusb*,int ) ;
 int ir_raw_event_handle (TYPE_1__*) ;
 int ir_raw_event_store_with_filter (TYPE_1__*,struct ir_raw_event*) ;

__attribute__((used)) static void igorplugusb_irdata(struct igorplugusb *ir, unsigned len)
{
 struct ir_raw_event rawir = {};
 unsigned i, start, overflow;

 dev_dbg(ir->dev, "irdata: %*ph (len=%u)", len, ir->buf_in, len);







 overflow = ir->buf_in[2];
 i = start = overflow + HEADERLEN;

 if (start >= len) {
  dev_err(ir->dev, "receive overflow invalid: %u", overflow);
 } else {
  if (overflow > 0)
   dev_warn(ir->dev, "receive overflow, at least %u lost",
        overflow);

  do {
   rawir.duration = ir->buf_in[i] * 85333;
   rawir.pulse = i & 1;

   ir_raw_event_store_with_filter(ir->rc, &rawir);

   if (++i == len)
    i = HEADERLEN;
  } while (i != start);


  rawir.duration = ir->rc->timeout;
  rawir.pulse = 0;
  ir_raw_event_store_with_filter(ir->rc, &rawir);

  ir_raw_event_handle(ir->rc);
 }

 igorplugusb_cmd(ir, SET_INFRABUFFER_EMPTY);
}
