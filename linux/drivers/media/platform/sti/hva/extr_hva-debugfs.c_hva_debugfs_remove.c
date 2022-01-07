
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * debugfs_entry; } ;
struct hva_dev {TYPE_1__ dbg; } ;


 int debugfs_remove_recursive (int *) ;

void hva_debugfs_remove(struct hva_dev *hva)
{
 debugfs_remove_recursive(hva->dbg.debugfs_entry);
 hva->dbg.debugfs_entry = ((void*)0);
}
