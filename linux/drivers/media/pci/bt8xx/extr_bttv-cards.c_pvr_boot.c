
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware {int size; int data; } ;
struct TYPE_4__ {int nr; TYPE_1__* pci; } ;
struct bttv {TYPE_2__ c; } ;
struct TYPE_3__ {int dev; } ;


 int pr_info (char*,int ,char*) ;
 int pr_warn (char*,int ) ;
 int pvr_altera_load (struct bttv*,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int pvr_boot(struct bttv *btv)
{
 const struct firmware *fw_entry;
 int rc;

 rc = request_firmware(&fw_entry, "hcwamc.rbf", &btv->c.pci->dev);
 if (rc != 0) {
  pr_warn("%d: no altera firmware [via hotplug]\n", btv->c.nr);
  return rc;
 }
 rc = pvr_altera_load(btv, fw_entry->data, fw_entry->size);
 pr_info("%d: altera firmware upload %s\n",
  btv->c.nr, (rc < 0) ? "failed" : "ok");
 release_firmware(fw_entry);
 return rc;
}
