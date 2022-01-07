
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_debug_print_board_info (struct ath10k*) ;
 int ath10k_debug_print_boot_info (struct ath10k*) ;
 int ath10k_debug_print_hwfw_info (struct ath10k*) ;

void ath10k_print_driver_info(struct ath10k *ar)
{
 ath10k_debug_print_hwfw_info(ar);
 ath10k_debug_print_board_info(ar);
 ath10k_debug_print_boot_info(ar);
}
