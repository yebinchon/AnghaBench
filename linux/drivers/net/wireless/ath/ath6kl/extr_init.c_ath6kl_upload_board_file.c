
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ target_ver; } ;
struct TYPE_3__ {scalar_t__ board_addr; } ;
struct ath6kl {int target_type; scalar_t__ fw_board_len; TYPE_2__ version; int * fw_board; TYPE_1__ hw; } ;


 scalar_t__ AR6003_BOARD_DATA_SZ ;
 scalar_t__ AR6003_BOARD_EXT_DATA_SZ ;
 scalar_t__ AR6003_BOARD_EXT_DATA_SZ_V2 ;
 scalar_t__ AR6004_BOARD_DATA_SZ ;
 scalar_t__ AR6004_BOARD_EXT_DATA_SZ ;
 scalar_t__ AR6004_HW_1_3_VERSION ;
 scalar_t__ AR6004_HW_3_0_VERSION ;
 int ATH6KL_DBG_BOOT ;
 int EINVAL ;
 int ENOENT ;


 scalar_t__ WARN_ON (int) ;
 int ath6kl_bmi_read_hi32 (struct ath6kl*,int ,scalar_t__*) ;
 int ath6kl_bmi_write (struct ath6kl*,scalar_t__,int *,scalar_t__) ;
 int ath6kl_bmi_write_hi32 (struct ath6kl*,int ,scalar_t__) ;
 int ath6kl_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int ath6kl_err (char*,...) ;
 int hi_board_data ;
 int hi_board_data_initialized ;
 int hi_board_ext_data ;
 int hi_board_ext_data_config ;

__attribute__((used)) static int ath6kl_upload_board_file(struct ath6kl *ar)
{
 u32 board_address, board_ext_address, param;
 u32 board_data_size, board_ext_data_size;
 int ret;

 if (WARN_ON(ar->fw_board == ((void*)0)))
  return -ENOENT;






 if (ar->hw.board_addr != 0) {
  board_address = ar->hw.board_addr;
  ath6kl_bmi_write_hi32(ar, hi_board_data,
          board_address);
 } else {
  ret = ath6kl_bmi_read_hi32(ar, hi_board_data, &board_address);
  if (ret) {
   ath6kl_err("Failed to get board file target address.\n");
   return ret;
  }
 }


 ret = ath6kl_bmi_read_hi32(ar, hi_board_ext_data, &board_ext_address);
 if (ret) {
  ath6kl_err("Failed to get extended board file target address.\n");
  return ret;
 }

 if (ar->target_type == 129 &&
     board_ext_address == 0) {
  ath6kl_err("Failed to get board file target address.\n");
  return -EINVAL;
 }

 switch (ar->target_type) {
 case 129:
  board_data_size = AR6003_BOARD_DATA_SZ;
  board_ext_data_size = AR6003_BOARD_EXT_DATA_SZ;
  if (ar->fw_board_len > (board_data_size + board_ext_data_size))
   board_ext_data_size = AR6003_BOARD_EXT_DATA_SZ_V2;
  break;
 case 128:
  board_data_size = AR6004_BOARD_DATA_SZ;
  board_ext_data_size = AR6004_BOARD_EXT_DATA_SZ;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 if (board_ext_address &&
     ar->fw_board_len == (board_data_size + board_ext_data_size)) {

  ath6kl_dbg(ATH6KL_DBG_BOOT,
      "writing extended board data to 0x%x (%d B)\n",
      board_ext_address, board_ext_data_size);

  ret = ath6kl_bmi_write(ar, board_ext_address,
           ar->fw_board + board_data_size,
           board_ext_data_size);
  if (ret) {
   ath6kl_err("Failed to write extended board data: %d\n",
       ret);
   return ret;
  }


  param = (board_ext_data_size << 16) | 1;

  ath6kl_bmi_write_hi32(ar, hi_board_ext_data_config, param);
 }

 if (ar->fw_board_len < board_data_size) {
  ath6kl_err("Too small board file: %zu\n", ar->fw_board_len);
  ret = -EINVAL;
  return ret;
 }

 ath6kl_dbg(ATH6KL_DBG_BOOT, "writing board file to 0x%x (%d B)\n",
     board_address, board_data_size);

 ret = ath6kl_bmi_write(ar, board_address, ar->fw_board,
          board_data_size);

 if (ret) {
  ath6kl_err("Board file bmi write failed: %d\n", ret);
  return ret;
 }


 if ((ar->version.target_ver == AR6004_HW_1_3_VERSION) ||
     (ar->version.target_ver == AR6004_HW_3_0_VERSION))
  param = board_data_size;
 else
  param = 1;

 ath6kl_bmi_write_hi32(ar, hi_board_data_initialized, param);

 return ret;
}
