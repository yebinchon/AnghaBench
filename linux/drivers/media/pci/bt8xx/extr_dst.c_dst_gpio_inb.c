
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union dst_gpio_packet {TYPE_1__ rd; } ;
typedef scalar_t__ u8 ;
struct dst_state {int bt; } ;


 int DST_IG_READ ;
 int EREMOTEIO ;
 int bt878_device_control (int ,int ,union dst_gpio_packet*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int dst_gpio_inb(struct dst_state *state, u8 *result)
{
 union dst_gpio_packet rd_packet;
 int err;

 *result = 0;
 if ((err = bt878_device_control(state->bt, DST_IG_READ, &rd_packet)) < 0) {
  pr_err("dst_gpio_inb error (err == %i)\n", err);
  return -EREMOTEIO;
 }
 *result = (u8) rd_packet.rd.value;

 return 0;
}
