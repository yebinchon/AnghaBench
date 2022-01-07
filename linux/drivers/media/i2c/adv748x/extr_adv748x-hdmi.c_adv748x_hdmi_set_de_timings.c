
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int dummy; } ;


 int ADV748X_CP_DE_POS_END_LOW ;
 int ADV748X_CP_DE_POS_HIGH ;
 int ADV748X_CP_DE_POS_HIGH_SET ;
 int ADV748X_CP_DE_POS_START_LOW ;
 int cp_write (struct adv748x_state*,int ,int) ;

__attribute__((used)) static void adv748x_hdmi_set_de_timings(struct adv748x_state *state, int shift)
{
 u8 high, low;


 high = ADV748X_CP_DE_POS_HIGH_SET;
 high |= (shift & 0x300) >> 8;
 low = shift & 0xff;


 cp_write(state, ADV748X_CP_DE_POS_HIGH, high);
 cp_write(state, ADV748X_CP_DE_POS_END_LOW, low);

 high |= (shift & 0x300) >> 6;

 cp_write(state, ADV748X_CP_DE_POS_HIGH, high);
 cp_write(state, ADV748X_CP_DE_POS_START_LOW, low);
}
