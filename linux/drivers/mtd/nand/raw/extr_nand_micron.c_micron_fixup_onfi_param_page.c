
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_onfi_params {int revision; } ;
struct nand_chip {int dummy; } ;


 int ONFI_VERSION_1_0 ;
 int cpu_to_le16 (int ) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void micron_fixup_onfi_param_page(struct nand_chip *chip,
      struct nand_onfi_params *p)
{





 if (le16_to_cpu(p->revision) == 0)
  p->revision = cpu_to_le16(ONFI_VERSION_1_0);
}
