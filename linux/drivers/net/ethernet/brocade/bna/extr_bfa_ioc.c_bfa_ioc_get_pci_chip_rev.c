
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {char asic_rev; } ;


 int BFA_IOC_CHIP_REV_LEN ;
 int BUG_ON (int) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_get_pci_chip_rev(struct bfa_ioc *ioc, char *chip_rev)
{
 BUG_ON(!(chip_rev));

 memset(chip_rev, 0, BFA_IOC_CHIP_REV_LEN);

 chip_rev[0] = 'R';
 chip_rev[1] = 'e';
 chip_rev[2] = 'v';
 chip_rev[3] = '-';
 chip_rev[4] = ioc->attr->asic_rev;
 chip_rev[5] = '\0';
}
