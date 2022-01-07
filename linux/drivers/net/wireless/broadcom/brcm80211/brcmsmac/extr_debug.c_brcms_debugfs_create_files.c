
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_pub {int dummy; } ;


 int brcms_debugfs_add_entry (struct brcms_pub*,char*,int ) ;
 int brcms_debugfs_hardware_read ;
 int brcms_debugfs_macstat_read ;

void brcms_debugfs_create_files(struct brcms_pub *drvr)
{
 brcms_debugfs_add_entry(drvr, "hardware", brcms_debugfs_hardware_read);
 brcms_debugfs_add_entry(drvr, "macstat", brcms_debugfs_macstat_read);
}
