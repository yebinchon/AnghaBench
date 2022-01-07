
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int tuner_type; int rxbuffer; } ;


 int TUNER_TYPE_MB86A15 ;
 int debug_dst_buffer (struct dst_state*) ;
 int dst_check_sum (int*,int) ;
 scalar_t__ dst_command (struct dst_state*,int*,int) ;
 scalar_t__ memcmp (int**,int *,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int dst_check_mb86a15(struct dst_state *state)
{
 u8 check_mb86a15[] = { 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

 check_mb86a15[7] = dst_check_sum(check_mb86a15, 7);
 if (dst_command(state, check_mb86a15, 8) < 0) {
  pr_err("Cmd=[0x10], failed\n");
  return -1;
 }
 debug_dst_buffer(state);

 if (memcmp(&check_mb86a15, &state->rxbuffer, 8) < 0) {
  pr_err("Found a MB86A15 NIM\n");
  state->tuner_type = TUNER_TYPE_MB86A15;
  return 0;
 }

 return -1;
}
