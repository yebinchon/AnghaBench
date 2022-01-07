
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int ktime_t ;
typedef int irqreturn_t ;
struct TYPE_8__ {int signal_pin_change; int signal_pin; } ;
struct TYPE_7__ {int timeout; } ;
struct TYPE_6__ {TYPE_3__* rcdev; int timeout_timer; int lastkt; TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int IR_MAX_DURATION ;
 int RS_ISR_PASS_LIMIT ;
 int UART_IIR ;
 int UART_IIR_NO_INT ;
 int UART_MSR ;
 int dev_err (int *,char*,...) ;
 int frbwrite (unsigned int,int) ;
 TYPE_4__* hardware ;
 int ir_raw_event_handle (TYPE_3__*) ;
 scalar_t__ jiffies ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int ktime_set (int,int ) ;
 int ktime_sub (int ,int ) ;
 unsigned int ktime_to_ns (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ nsecs_to_jiffies (int ) ;
 int sense ;
 TYPE_2__ serial_ir ;
 int sinp (int ) ;
 size_t type ;

__attribute__((used)) static irqreturn_t serial_ir_irq_handler(int i, void *blah)
{
 ktime_t kt;
 int counter, dcd;
 u8 status;
 ktime_t delkt;
 unsigned int data;
 static int last_dcd = -1;

 if ((sinp(UART_IIR) & UART_IIR_NO_INT)) {

  return IRQ_NONE;
 }

 counter = 0;
 do {
  counter++;
  status = sinp(UART_MSR);
  if (counter > RS_ISR_PASS_LIMIT) {
   dev_err(&serial_ir.pdev->dev, "Trapped in interrupt");
   break;
  }
  if ((status & hardware[type].signal_pin_change) &&
      sense != -1) {

   kt = ktime_get();
   dcd = (status & hardware[type].signal_pin) ? 1 : 0;

   if (dcd == last_dcd) {
    dev_err(&serial_ir.pdev->dev,
     "ignoring spike: %d %d %lldns %lldns\n",
     dcd, sense, ktime_to_ns(kt),
     ktime_to_ns(serial_ir.lastkt));
    continue;
   }

   delkt = ktime_sub(kt, serial_ir.lastkt);
   if (ktime_compare(delkt, ktime_set(15, 0)) > 0) {
    data = IR_MAX_DURATION;
    if (!(dcd ^ sense)) {

     dev_err(&serial_ir.pdev->dev,
      "dcd unexpected: %d %d %lldns %lldns\n",
      dcd, sense, ktime_to_ns(kt),
      ktime_to_ns(serial_ir.lastkt));




     sense = sense ? 0 : 1;
    }
   } else {
    data = ktime_to_ns(delkt);
   }
   frbwrite(data, !(dcd ^ sense));
   serial_ir.lastkt = kt;
   last_dcd = dcd;
  }
 } while (!(sinp(UART_IIR) & UART_IIR_NO_INT));

 mod_timer(&serial_ir.timeout_timer,
    jiffies + nsecs_to_jiffies(serial_ir.rcdev->timeout));

 ir_raw_event_handle(serial_ir.rcdev);

 return IRQ_HANDLED;
}
