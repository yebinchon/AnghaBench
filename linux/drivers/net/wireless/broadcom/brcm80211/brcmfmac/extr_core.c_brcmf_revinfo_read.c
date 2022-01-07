
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct brcmf_rev_info {int nvramrev; int anarev; int phyrev; int phytype; int bus; int ucoderev; int driverrev; int boardrev; int boardvendor; int boardid; int corerev; int chippkg; int chipname; int radiorev; int deviceid; int vendorid; } ;
struct brcmf_bus {TYPE_1__* drvr; } ;
struct TYPE_2__ {int clmver; struct brcmf_rev_info revinfo; } ;


 int BRCMU_BOARDREV_LEN ;
 int BRCMU_DOTREV_LEN ;
 int brcmu_boardrev_str (int ,char*) ;
 int brcmu_dotrev_str (int ,char*) ;
 struct brcmf_bus* dev_get_drvdata (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int brcmf_revinfo_read(struct seq_file *s, void *data)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(s->private);
 struct brcmf_rev_info *ri = &bus_if->drvr->revinfo;
 char drev[BRCMU_DOTREV_LEN];
 char brev[BRCMU_BOARDREV_LEN];

 seq_printf(s, "vendorid: 0x%04x\n", ri->vendorid);
 seq_printf(s, "deviceid: 0x%04x\n", ri->deviceid);
 seq_printf(s, "radiorev: %s\n", brcmu_dotrev_str(ri->radiorev, drev));
 seq_printf(s, "chip: %s\n", ri->chipname);
 seq_printf(s, "chippkg: %u\n", ri->chippkg);
 seq_printf(s, "corerev: %u\n", ri->corerev);
 seq_printf(s, "boardid: 0x%04x\n", ri->boardid);
 seq_printf(s, "boardvendor: 0x%04x\n", ri->boardvendor);
 seq_printf(s, "boardrev: %s\n", brcmu_boardrev_str(ri->boardrev, brev));
 seq_printf(s, "driverrev: %s\n", brcmu_dotrev_str(ri->driverrev, drev));
 seq_printf(s, "ucoderev: %u\n", ri->ucoderev);
 seq_printf(s, "bus: %u\n", ri->bus);
 seq_printf(s, "phytype: %u\n", ri->phytype);
 seq_printf(s, "phyrev: %u\n", ri->phyrev);
 seq_printf(s, "anarev: %u\n", ri->anarev);
 seq_printf(s, "nvramrev: %08x\n", ri->nvramrev);

 seq_printf(s, "clmver: %s\n", bus_if->drvr->clmver);

 return 0;
}
