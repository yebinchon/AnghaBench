
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_ddrctl_setting {int dummy; } ;
struct da8xx_ddrctl_board_settings {struct da8xx_ddrctl_setting const* settings; int board; } ;


 int ARRAY_SIZE (struct da8xx_ddrctl_board_settings*) ;
 struct da8xx_ddrctl_board_settings* da8xx_ddrctl_board_confs ;
 scalar_t__ of_machine_is_compatible (int ) ;

__attribute__((used)) static const struct da8xx_ddrctl_setting *da8xx_ddrctl_get_board_settings(void)
{
 const struct da8xx_ddrctl_board_settings *board_settings;
 int i;

 for (i = 0; i < ARRAY_SIZE(da8xx_ddrctl_board_confs); i++) {
  board_settings = &da8xx_ddrctl_board_confs[i];

  if (of_machine_is_compatible(board_settings->board))
   return board_settings->settings;
 }

 return ((void*)0);
}
