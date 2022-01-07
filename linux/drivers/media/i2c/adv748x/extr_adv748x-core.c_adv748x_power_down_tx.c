
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int dummy; } ;
struct adv748x_csi2 {int num_lanes; struct adv748x_state* state; } ;


 int ADV748X_PAGE_TXA ;
 int ADV748X_PAGE_TXB ;
 int adv748x_write_check (struct adv748x_state*,int ,int,int,int*) ;
 scalar_t__ is_txa (struct adv748x_csi2*) ;

__attribute__((used)) static int adv748x_power_down_tx(struct adv748x_csi2 *tx)
{
 struct adv748x_state *state = tx->state;
 u8 page = is_txa(tx) ? ADV748X_PAGE_TXA : ADV748X_PAGE_TXB;
 int ret = 0;


 adv748x_write_check(state, page, 0x31, 0x82, &ret);
 adv748x_write_check(state, page, 0x1e, 0x00, &ret);


 adv748x_write_check(state, page, 0x00, 0x80 | tx->num_lanes, &ret);


 adv748x_write_check(state, page, 0xda, 0x01, &ret);


 adv748x_write_check(state, page, 0xc1, 0x3b, &ret);

 return ret;
}
