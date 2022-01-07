
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_board {scalar_t__ major; scalar_t__ minor; } ;
struct ef4_nic {int dummy; } ;


 unsigned int LM87_ALARM_TEMP_EXT1 ;
 int ef4_check_lm87 (struct ef4_nic*,unsigned int) ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;

__attribute__((used)) static int sfe4002_check_hw(struct ef4_nic *efx)
{
 struct falcon_board *board = falcon_board(efx);



 unsigned alarm_mask =
  (board->major == 0 && board->minor == 0) ?
  ~LM87_ALARM_TEMP_EXT1 : ~0;

 return ef4_check_lm87(efx, alarm_mask);
}
