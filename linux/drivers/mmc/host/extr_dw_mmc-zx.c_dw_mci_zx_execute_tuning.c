
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int verid; } ;


 int dw_mci_zx_emmc_execute_tuning (struct dw_mci_slot*,int ) ;

__attribute__((used)) static int dw_mci_zx_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
{
 struct dw_mci *host = slot->host;

 if (host->verid == 0x290a)
  return dw_mci_zx_emmc_execute_tuning(slot, opcode);


 return 0;
}
