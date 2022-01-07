
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_slot {int dummy; } ;
struct rtsx_pcr {int slots; int state; int flags; int card_drive_sel; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int aspm_en; TYPE_1__* ops; int num_slots; int ic_version; int pcr_mutex; int lock; } ;
struct TYPE_2__ {int (* fetch_vendor_settings ) (struct rtsx_pcr*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_PID (struct rtsx_pcr*) ;
 int PDEV_STAT_IDLE ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int mutex_init (int *) ;
 int pcr_dbg (struct rtsx_pcr*,char*,int,...) ;
 int rtl8402_init_params (struct rtsx_pcr*) ;
 int rtl8411_init_params (struct rtsx_pcr*) ;
 int rtl8411b_init_params (struct rtsx_pcr*) ;
 int rts5209_init_params (struct rtsx_pcr*) ;
 int rts5227_init_params (struct rtsx_pcr*) ;
 int rts5229_init_params (struct rtsx_pcr*) ;
 int rts522a_init_params (struct rtsx_pcr*) ;
 int rts5249_init_params (struct rtsx_pcr*) ;
 int rts524a_init_params (struct rtsx_pcr*) ;
 int rts525a_init_params (struct rtsx_pcr*) ;
 int rts5260_init_params (struct rtsx_pcr*) ;
 int rtsx_pci_init_hw (struct rtsx_pcr*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct rtsx_pcr*) ;

__attribute__((used)) static int rtsx_pci_init_chip(struct rtsx_pcr *pcr)
{
 int err;

 spin_lock_init(&pcr->lock);
 mutex_init(&pcr->pcr_mutex);

 switch (PCI_PID(pcr)) {
 default:
 case 0x5209:
  rts5209_init_params(pcr);
  break;

 case 0x5229:
  rts5229_init_params(pcr);
  break;

 case 0x5289:
  rtl8411_init_params(pcr);
  break;

 case 0x5227:
  rts5227_init_params(pcr);
  break;

 case 0x522A:
  rts522a_init_params(pcr);
  break;

 case 0x5249:
  rts5249_init_params(pcr);
  break;

 case 0x524A:
  rts524a_init_params(pcr);
  break;

 case 0x525A:
  rts525a_init_params(pcr);
  break;

 case 0x5287:
  rtl8411b_init_params(pcr);
  break;

 case 0x5286:
  rtl8402_init_params(pcr);
  break;
 case 0x5260:
  rts5260_init_params(pcr);
  break;
 }

 pcr_dbg(pcr, "PID: 0x%04x, IC version: 0x%02x\n",
   PCI_PID(pcr), pcr->ic_version);

 pcr->slots = kcalloc(pcr->num_slots, sizeof(struct rtsx_slot),
   GFP_KERNEL);
 if (!pcr->slots)
  return -ENOMEM;

 if (pcr->ops->fetch_vendor_settings)
  pcr->ops->fetch_vendor_settings(pcr);

 pcr_dbg(pcr, "pcr->aspm_en = 0x%x\n", pcr->aspm_en);
 pcr_dbg(pcr, "pcr->sd30_drive_sel_1v8 = 0x%x\n",
   pcr->sd30_drive_sel_1v8);
 pcr_dbg(pcr, "pcr->sd30_drive_sel_3v3 = 0x%x\n",
   pcr->sd30_drive_sel_3v3);
 pcr_dbg(pcr, "pcr->card_drive_sel = 0x%x\n",
   pcr->card_drive_sel);
 pcr_dbg(pcr, "pcr->flags = 0x%x\n", pcr->flags);

 pcr->state = PDEV_STAT_IDLE;
 err = rtsx_pci_init_hw(pcr);
 if (err < 0) {
  kfree(pcr->slots);
  return err;
 }

 return 0;
}
