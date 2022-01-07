
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv748x_state {TYPE_1__* client; } ;
struct TYPE_2__ {int addr; } ;


 int ADV748X_IO_CHIP_REV_ID_1 ;
 int ADV748X_IO_CHIP_REV_ID_2 ;
 int EIO ;
 int adv_err (struct adv748x_state*,char*) ;
 int adv_info (struct adv748x_state*,char*,int,int,int) ;
 int io_read (struct adv748x_state*,int ) ;

__attribute__((used)) static int adv748x_identify_chip(struct adv748x_state *state)
{
 int msb, lsb;

 lsb = io_read(state, ADV748X_IO_CHIP_REV_ID_1);
 msb = io_read(state, ADV748X_IO_CHIP_REV_ID_2);

 if (lsb < 0 || msb < 0) {
  adv_err(state, "Failed to read chip revision\n");
  return -EIO;
 }

 adv_info(state, "chip found @ 0x%02x revision %02x%02x\n",
   state->client->addr << 1, lsb, msb);

 return 0;
}
