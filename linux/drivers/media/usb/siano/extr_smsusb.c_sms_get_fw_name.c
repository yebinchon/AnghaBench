
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** fw; } ;


 TYPE_1__* sms_get_board (int) ;
 char** smsusb1_fw_lkup ;

__attribute__((used)) static inline char *sms_get_fw_name(int mode, int board_id)
{
 char **fw = sms_get_board(board_id)->fw;
 return (fw && fw[mode]) ? fw[mode] : smsusb1_fw_lkup[mode];
}
