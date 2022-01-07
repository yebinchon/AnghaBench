
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fw_board; char* fw_default_board; } ;
struct ath6kl {int fw_board_len; int * fw_board; TYPE_1__ hw; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 int ath6kl_err (char*,char const*,int) ;
 int ath6kl_get_fw (struct ath6kl*,char const*,int **,int *) ;
 int ath6kl_warn (char*,...) ;
 scalar_t__ check_device_tree (struct ath6kl*) ;

__attribute__((used)) static int ath6kl_fetch_board_file(struct ath6kl *ar)
{
 const char *filename;
 int ret;

 if (ar->fw_board != ((void*)0))
  return 0;

 if (WARN_ON(ar->hw.fw_board == ((void*)0)))
  return -EINVAL;

 filename = ar->hw.fw_board;

 ret = ath6kl_get_fw(ar, filename, &ar->fw_board,
       &ar->fw_board_len);
 if (ret == 0) {

  return 0;
 }

 if (check_device_tree(ar)) {

  return 0;
 }


 ath6kl_warn("Failed to get board file %s (%d), trying to find default board file.\n",
      filename, ret);

 filename = ar->hw.fw_default_board;

 ret = ath6kl_get_fw(ar, filename, &ar->fw_board,
       &ar->fw_board_len);
 if (ret) {
  ath6kl_err("Failed to get default board file %s: %d\n",
      filename, ret);
  return ret;
 }

 ath6kl_warn("WARNING! No proper board file was not found, instead using a default board file.\n");
 ath6kl_warn("Most likely your hardware won't work as specified. Install correct board file!\n");

 return 0;
}
