
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int* resp; } ;


 scalar_t__ R1_CURRENT_STATE (int) ;
 int R1_READY_FOR_DATA ;
 scalar_t__ R1_STATE_PRG ;

__attribute__((used)) static int mmc_test_busy(struct mmc_command *cmd)
{
 return !(cmd->resp[0] & R1_READY_FOR_DATA) ||
  (R1_CURRENT_STATE(cmd->resp[0]) == R1_STATE_PRG);
}
