
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int CB710_MAX_DIVIDER_IDX ;
 int* cb710_clock_divider_log2 ;
 struct cb710_slot* cb710_mmc_to_slot (struct mmc_host*) ;
 int cb710_pci_update_config_reg (struct pci_dev*,int,int,int) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 TYPE_1__* cb710_slot_to_chip (struct cb710_slot*) ;
 int* cb710_src_freq_mhz ;
 int dev_dbg (int ,char*,int,int,int,int,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static void cb710_mmc_select_clock_divider(struct mmc_host *mmc, int hz)
{
 struct cb710_slot *slot = cb710_mmc_to_slot(mmc);
 struct pci_dev *pdev = cb710_slot_to_chip(slot)->pdev;
 u32 src_freq_idx;
 u32 divider_idx;
 int src_hz;






 pci_read_config_dword(pdev, 0x48, &src_freq_idx);
 src_freq_idx = (src_freq_idx >> 16) & 0xF;
 src_hz = cb710_src_freq_mhz[src_freq_idx] * 1000000;

 for (divider_idx = 0; divider_idx < CB710_MAX_DIVIDER_IDX; ++divider_idx) {
  if (hz >= src_hz >> cb710_clock_divider_log2[divider_idx])
   break;
 }

 if (src_freq_idx)
  divider_idx |= 0x8;
 else if (divider_idx == 0)
  divider_idx = 1;

 cb710_pci_update_config_reg(pdev, 0x40, ~0xF0000000, divider_idx << 28);

 dev_dbg(cb710_slot_dev(slot),
  "clock set to %d Hz, wanted %d Hz; src_freq_idx = %d, divider_idx = %d|%d\n",
  src_hz >> cb710_clock_divider_log2[divider_idx & 7],
  hz, src_freq_idx, divider_idx & 7, divider_idx & 8);
}
