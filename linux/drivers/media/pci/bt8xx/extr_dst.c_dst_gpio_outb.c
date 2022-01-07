
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mask; int highvals; } ;
struct TYPE_3__ {int mask; int enable; } ;
union dst_gpio_packet {TYPE_2__ outp; TYPE_1__ enb; } ;
typedef int u32 ;
struct dst_state {int bt; } ;


 int DST_IG_ENABLE ;
 int DST_IG_WRITE ;
 int EREMOTEIO ;
 int bt878_device_control (int ,int ,union dst_gpio_packet*) ;
 int dprintk (int,char*,int,int,int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static int dst_gpio_outb(struct dst_state *state, u32 mask, u32 enbb,
    u32 outhigh, int delay)
{
 union dst_gpio_packet enb;
 union dst_gpio_packet bits;
 int err;

 enb.enb.mask = mask;
 enb.enb.enable = enbb;

 dprintk(2, "mask=[%04x], enbb=[%04x], outhigh=[%04x]\n",
  mask, enbb, outhigh);
 if ((err = bt878_device_control(state->bt, DST_IG_ENABLE, &enb)) < 0) {
  dprintk(2, "dst_gpio_enb error (err == %i, mask == %02x, enb == %02x)\n",
   err, mask, enbb);
  return -EREMOTEIO;
 }
 udelay(1000);

 if (enbb == 0)
  return 0;
 if (delay)
  msleep(10);
 bits.outp.mask = enbb;
 bits.outp.highvals = outhigh;
 if ((err = bt878_device_control(state->bt, DST_IG_WRITE, &bits)) < 0) {
  dprintk(2, "dst_gpio_outb error (err == %i, enbb == %02x, outhigh == %02x)\n",
   err, enbb, outhigh);
  return -EREMOTEIO;
 }

 return 0;
}
