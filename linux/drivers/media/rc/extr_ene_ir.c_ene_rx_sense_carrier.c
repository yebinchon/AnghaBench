
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_raw_event {int carrier_report; int carrier; int duty_cycle; } ;
struct ene_device {int rdev; scalar_t__ carrier_detect_enabled; } ;


 int ENE_CIRCAR_HPRD ;
 int ENE_CIRCAR_PRD ;
 int ENE_CIRCAR_PRD_VALID ;
 int dbg (char*,int,...) ;
 int ene_read_reg (struct ene_device*,int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;

__attribute__((used)) static void ene_rx_sense_carrier(struct ene_device *dev)
{
 int carrier, duty_cycle;
 int period = ene_read_reg(dev, ENE_CIRCAR_PRD);
 int hperiod = ene_read_reg(dev, ENE_CIRCAR_HPRD);

 if (!(period & ENE_CIRCAR_PRD_VALID))
  return;

 period &= ~ENE_CIRCAR_PRD_VALID;

 if (!period)
  return;

 dbg("RX: hardware carrier period = %02x", period);
 dbg("RX: hardware carrier pulse period = %02x", hperiod);

 carrier = 2000000 / period;
 duty_cycle = (hperiod * 100) / period;
 dbg("RX: sensed carrier = %d Hz, duty cycle %d%%",
      carrier, duty_cycle);
 if (dev->carrier_detect_enabled) {
  struct ir_raw_event ev = {
   .carrier_report = 1,
   .carrier = carrier,
   .duty_cycle = duty_cycle
  };
  ir_raw_event_store(dev->rdev, &ev);
 }
}
