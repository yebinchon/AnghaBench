
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed_phy_status {int speed; scalar_t__ link; } ;


 int EINVAL ;
 int pr_warn (char*) ;
 int swphy_decode_speed (int ) ;

int swphy_validate_state(const struct fixed_phy_status *state)
{
 int err;

 if (state->link) {
  err = swphy_decode_speed(state->speed);
  if (err < 0) {
   pr_warn("swphy: unknown speed\n");
   return -EINVAL;
  }
 }
 return 0;
}
