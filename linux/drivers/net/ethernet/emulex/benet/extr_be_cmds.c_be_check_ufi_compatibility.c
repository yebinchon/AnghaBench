
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flash_file_hdr_g3 {int* build; int asic_type_rev; } ;
struct be_adapter {int asic_rev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BE2_chip (struct be_adapter*) ;
 int BE3_chip (struct be_adapter*) ;
 scalar_t__ BEx_chip (struct be_adapter*) ;



 int dev_err (int *,char*) ;
 int skyhawk_chip (struct be_adapter*) ;

__attribute__((used)) static bool be_check_ufi_compatibility(struct be_adapter *adapter,
           struct flash_file_hdr_g3 *fhdr)
{
 if (!fhdr) {
  dev_err(&adapter->pdev->dev, "Invalid FW UFI file");
  return 0;
 }




 switch (fhdr->build[0]) {
 case 128:
  if (!skyhawk_chip(adapter))
   return 0;
  break;
 case 129:
  if (!BE3_chip(adapter))
   return 0;
  break;
 case 130:
  if (!BE2_chip(adapter))
   return 0;
  break;
 default:
  return 0;
 }






 if (BEx_chip(adapter) && fhdr->asic_type_rev == 0)
  return adapter->asic_rev < 0x10;
 else
  return (fhdr->asic_type_rev >= adapter->asic_rev);
}
