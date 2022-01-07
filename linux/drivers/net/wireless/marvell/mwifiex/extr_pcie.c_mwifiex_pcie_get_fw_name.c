
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_service_card {TYPE_1__* dev; } ;
struct mwifiex_adapter {int fw_name; struct pcie_service_card* card; } ;
struct TYPE_2__ {int device; } ;


 int CHIP_MAGIC_VALUE ;
 int CHIP_VER_PCIEUART ;
 int PCIE8766_DEFAULT_FW_NAME ;

 int PCIE8897_A0_FW_NAME ;

 int PCIE8897_B0_FW_NAME ;
 int PCIE8897_DEFAULT_FW_NAME ;
 int PCIE8997_A1 ;
 int PCIEUART8997_FW_NAME_V4 ;
 int PCIEUSB8997_FW_NAME_V4 ;



 int mwifiex_read_reg (struct mwifiex_adapter*,int,int*) ;
 int mwifiex_write_reg (struct mwifiex_adapter*,int,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void mwifiex_pcie_get_fw_name(struct mwifiex_adapter *adapter)
{
 int revision_id = 0;
 int version, magic;
 struct pcie_service_card *card = adapter->card;

 switch (card->dev->device) {
 case 130:
  strcpy(adapter->fw_name, PCIE8766_DEFAULT_FW_NAME);
  break;
 case 129:
  mwifiex_write_reg(adapter, 0x0c58, 0x80c00000);
  mwifiex_read_reg(adapter, 0x0c58, &revision_id);
  revision_id &= 0xff00;
  switch (revision_id) {
  case 132:
   strcpy(adapter->fw_name, PCIE8897_A0_FW_NAME);
   break;
  case 131:
   strcpy(adapter->fw_name, PCIE8897_B0_FW_NAME);
   break;
  default:
   strcpy(adapter->fw_name, PCIE8897_DEFAULT_FW_NAME);

   break;
  }
  break;
 case 128:
  mwifiex_read_reg(adapter, 0x8, &revision_id);
  mwifiex_read_reg(adapter, 0x0cd0, &version);
  mwifiex_read_reg(adapter, 0x0cd4, &magic);
  revision_id &= 0xff;
  version &= 0x7;
  magic &= 0xff;
  if (revision_id == PCIE8997_A1 &&
      magic == CHIP_MAGIC_VALUE &&
      version == CHIP_VER_PCIEUART)
   strcpy(adapter->fw_name, PCIEUART8997_FW_NAME_V4);
  else
   strcpy(adapter->fw_name, PCIEUSB8997_FW_NAME_V4);
  break;
 default:
  break;
 }
}
