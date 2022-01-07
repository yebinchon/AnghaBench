
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_pci {TYPE_1__* pdev; } ;
struct TYPE_4__ {int chip_id; } ;
struct ath10k {TYPE_2__ bus_param; } ;
struct TYPE_3__ {int device; } ;


 int MS (int ,int ) ;
 int SOC_CHIP_ID_REV ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*) ;

__attribute__((used)) static int ath10k_pci_get_num_banks(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 switch (ar_pci->pdev->device) {
 case 130:
 case 131:
 case 128:
 case 132:
 case 129:
 case 133:
  return 1;
 case 144:
 case 143:
  switch (MS(ar->bus_param.chip_id, SOC_CHIP_ID_REV)) {
  case 142:
  case 141:
  case 139:
  case 138:
   return 3;
  case 140:
   return 2;
  case 137:
  case 136:
  case 135:
   return 9;
  }
  break;
 case 134:
  return 9;
 }

 ath10k_warn(ar, "unknown number of banks, assuming 1\n");
 return 1;
}
