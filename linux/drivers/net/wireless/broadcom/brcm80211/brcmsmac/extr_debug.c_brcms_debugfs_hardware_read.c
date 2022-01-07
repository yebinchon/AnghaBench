
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct seq_file {struct brcms_pub* private; } ;
struct brcms_pub {TYPE_4__* wlc; } ;
struct brcms_hardware {int sromrev; TYPE_6__* band; int boardflags2; int boardflags; int boardrev; struct bcma_device* d11core; } ;
struct TYPE_8__ {int rev; } ;
struct bcma_device {TYPE_2__ id; struct bcma_bus* bus; } ;
struct TYPE_9__ {int vendor; int type; } ;
struct TYPE_7__ {int pkg; int rev; int id; } ;
struct bcma_bus {TYPE_3__ boardinfo; TYPE_1__ chipinfo; } ;
struct TYPE_12__ {TYPE_5__* pi; int phyrev; int phytype; int radiorev; } ;
struct TYPE_11__ {int ana_rev; } ;
struct TYPE_10__ {int ucode_rev; struct brcms_hardware* hw; } ;


 int BRCMU_BOARDREV_LEN ;
 int brcmu_boardrev_str (int ,char*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static
int brcms_debugfs_hardware_read(struct seq_file *s, void *data)
{
 struct brcms_pub *drvr = s->private;
 struct brcms_hardware *hw = drvr->wlc->hw;
 struct bcma_device *core = hw->d11core;
 struct bcma_bus *bus = core->bus;
 char boardrev[BRCMU_BOARDREV_LEN];

 seq_printf(s, "chipnum 0x%x\n"
     "chiprev 0x%x\n"
     "chippackage 0x%x\n"
     "corerev 0x%x\n"
     "boardid 0x%x\n"
     "boardvendor 0x%x\n"
     "boardrev %s\n"
     "boardflags 0x%x\n"
     "boardflags2 0x%x\n"
     "ucoderev 0x%x\n"
     "radiorev 0x%x\n"
     "phytype 0x%x\n"
     "phyrev 0x%x\n"
     "anarev 0x%x\n"
     "nvramrev %d\n",
     bus->chipinfo.id, bus->chipinfo.rev, bus->chipinfo.pkg,
     core->id.rev, bus->boardinfo.type, bus->boardinfo.vendor,
     brcmu_boardrev_str(hw->boardrev, boardrev),
     drvr->wlc->hw->boardflags, drvr->wlc->hw->boardflags2,
     drvr->wlc->ucode_rev, hw->band->radiorev,
     hw->band->phytype, hw->band->phyrev, hw->band->pi->ana_rev,
     hw->sromrev);
 return 0;
}
