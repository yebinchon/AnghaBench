
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int* fw_version; int rxbuffer; } ;


 int dprintk (int,char*) ;
 int dst_check_sum (int*,int) ;
 scalar_t__ dst_command (struct dst_state*,int*,int) ;
 int memcpy (int**,int *,int) ;
 int pr_err (char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static int dst_fw_ver(struct dst_state *state)
{
 u8 get_ver[] = { 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 get_ver[7] = dst_check_sum(get_ver, 7);
 if (dst_command(state, get_ver, 8) < 0) {
  dprintk(2, "Unsupported Command\n");
  return -1;
 }
 memcpy(&state->fw_version, &state->rxbuffer, 8);
 pr_err("Firmware Ver = %x.%x Build = %02x, on %x:%x, %x-%x-20%02x\n",
  state->fw_version[0] >> 4, state->fw_version[0] & 0x0f,
  state->fw_version[1],
  state->fw_version[5], state->fw_version[6],
  state->fw_version[4], state->fw_version[3], state->fw_version[2]);

 return 0;
}
