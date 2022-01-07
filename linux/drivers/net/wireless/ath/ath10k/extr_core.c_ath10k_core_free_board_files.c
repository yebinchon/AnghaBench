
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ext_board_len; int * ext_board_data; int * ext_board; scalar_t__ board_len; int * board_data; int * board; } ;
struct ath10k {TYPE_1__ normal_mode_fw; } ;


 int IS_ERR (int *) ;
 int release_firmware (int *) ;

void ath10k_core_free_board_files(struct ath10k *ar)
{
 if (!IS_ERR(ar->normal_mode_fw.board))
  release_firmware(ar->normal_mode_fw.board);

 if (!IS_ERR(ar->normal_mode_fw.ext_board))
  release_firmware(ar->normal_mode_fw.ext_board);

 ar->normal_mode_fw.board = ((void*)0);
 ar->normal_mode_fw.board_data = ((void*)0);
 ar->normal_mode_fw.board_len = 0;
 ar->normal_mode_fw.ext_board = ((void*)0);
 ar->normal_mode_fw.ext_board_data = ((void*)0);
 ar->normal_mode_fw.ext_board_len = 0;
}
