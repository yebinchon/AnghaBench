
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int tqmx86_board_id_to_clk_rate(u8 board_id)
{
 switch (board_id) {
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
  return 24000;
 case 129:
 case 130:
 case 128:
  return 25000;
 case 131:
 case 132:
  return 33000;
 default:
  return 0;
 }
}
