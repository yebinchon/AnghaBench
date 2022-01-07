
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_entry; } ;
struct hva_dev {TYPE_1__ dbg; } ;


 int HVA_NAME ;
 int debugfs_create_dir (int ,int *) ;
 int device ;
 int encoders ;
 int hva_dbg_create_entry (int ) ;
 int hva_debugfs_remove (struct hva_dev*) ;
 int last ;
 int regs ;

void hva_debugfs_create(struct hva_dev *hva)
{
 hva->dbg.debugfs_entry = debugfs_create_dir(HVA_NAME, ((void*)0));
 if (!hva->dbg.debugfs_entry)
  goto err;

 if (!hva_dbg_create_entry(device))
  goto err;

 if (!hva_dbg_create_entry(encoders))
  goto err;

 if (!hva_dbg_create_entry(last))
  goto err;

 if (!hva_dbg_create_entry(regs))
  goto err;

 return;

err:
 hva_debugfs_remove(hva);
}
