
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct ath_hw {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct ath_hw*,int *) ;
 int fops_modal_eeprom ;

void ath9k_cmn_debug_modal_eeprom(struct dentry *debugfs_phy,
      struct ath_hw *ah)
{
 debugfs_create_file("modal_eeprom", 0400, debugfs_phy, ah,
       &fops_modal_eeprom);
}
