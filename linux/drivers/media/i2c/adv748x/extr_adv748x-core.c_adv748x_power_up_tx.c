
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sd; } ;
struct adv748x_state {TYPE_1__ hdmi; } ;
struct adv748x_csi2 {int num_lanes; int * src; struct adv748x_state* state; } ;


 int ADV748X_PAGE_TXA ;
 int ADV748X_PAGE_TXB ;
 int adv748x_write_check (struct adv748x_state*,int ,int,int,int*) ;
 scalar_t__ is_txa (struct adv748x_csi2*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int adv748x_power_up_tx(struct adv748x_csi2 *tx)
{
 struct adv748x_state *state = tx->state;
 u8 page = is_txa(tx) ? ADV748X_PAGE_TXA : ADV748X_PAGE_TXB;
 int ret = 0;


 adv748x_write_check(state, page, 0x00, 0x80 | tx->num_lanes, &ret);


 adv748x_write_check(state, page, 0x00, 0xa0 | tx->num_lanes, &ret);


 if (tx->src == &state->hdmi.sd) {
  adv748x_write_check(state, page, 0xdb, 0x10, &ret);
  adv748x_write_check(state, page, 0xd6, 0x07, &ret);
 } else {
  adv748x_write_check(state, page, 0xd2, 0x40, &ret);
 }

 adv748x_write_check(state, page, 0xc4, 0x0a, &ret);
 adv748x_write_check(state, page, 0x71, 0x33, &ret);
 adv748x_write_check(state, page, 0x72, 0x11, &ret);


 adv748x_write_check(state, page, 0xf0, 0x00, &ret);


 adv748x_write_check(state, page, 0x31, 0x82, &ret);
 adv748x_write_check(state, page, 0x1e, 0x40, &ret);


 adv748x_write_check(state, page, 0xda, 0x01, &ret);
 usleep_range(2000, 2500);


 adv748x_write_check(state, page, 0x00, 0x20 | tx->num_lanes, &ret);
 usleep_range(1000, 1500);


 adv748x_write_check(state, page, 0xc1, 0x2b, &ret);
 usleep_range(1000, 1500);
 adv748x_write_check(state, page, 0x31, 0x80, &ret);

 return ret;
}
