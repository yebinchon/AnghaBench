
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tuner_types {int tuner_type; int tuner_name; int board_name; } ;
struct dst_state {int tuner_type; int * card_info; int rxbuffer; } ;


 int ARRAY_SIZE (struct tuner_types*) ;
 int dprintk (int,char*) ;
 int dst_check_sum (int*,int) ;
 scalar_t__ dst_command (struct dst_state*,int*,int) ;
 int memcpy (int **,int *,int) ;
 int memset (int **,char,int) ;
 int pr_err (char*,int ,...) ;
 int strcmp (int *,int ) ;
 struct tuner_types* tuner_list ;

__attribute__((used)) static int dst_card_type(struct dst_state *state)
{
 int j;
 struct tuner_types *p_tuner_list = ((void*)0);

 u8 get_type[] = { 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 get_type[7] = dst_check_sum(get_type, 7);
 if (dst_command(state, get_type, 8) < 0) {
  dprintk(2, "Unsupported Command\n");
  return -1;
 }
 memset(&state->card_info, '\0', 8);
 memcpy(&state->card_info, &state->rxbuffer, 7);
 pr_err("Device Model=[%s]\n", &state->card_info[0]);

 for (j = 0, p_tuner_list = tuner_list; j < ARRAY_SIZE(tuner_list); j++, p_tuner_list++) {
  if (!strcmp(&state->card_info[0], p_tuner_list->board_name)) {
   state->tuner_type = p_tuner_list->tuner_type;
   pr_err("DST has [%s] tuner, tuner type=[%d]\n",
    p_tuner_list->tuner_name, p_tuner_list->tuner_type);
  }
 }

 return 0;
}
