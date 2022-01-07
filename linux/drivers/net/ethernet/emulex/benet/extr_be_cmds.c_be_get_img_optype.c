
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct flash_section_entry {int optype; int type; } ;
 int OPTYPE_BIOS ;
 int OPTYPE_FCOE_BIOS ;
 int OPTYPE_FLASHISM_JUMPVECTOR ;
 int OPTYPE_ISCSI_ACTIVE ;
 int OPTYPE_ISCSI_BACKUP ;
 int OPTYPE_NCSI_FW ;
 int OPTYPE_PXE_BIOS ;
 int OPTYPE_REDBOOT ;
 int OPTYPE_REDBOOT_CONFIG ;
 int OPTYPE_REDBOOT_DIR ;
 int OPTYPE_SH_PHY_FW ;
 int OPTYPE_UFI_DIR ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u16 be_get_img_optype(struct flash_section_entry fsec_entry)
{
 u32 img_type = le32_to_cpu(fsec_entry.type);
 u16 img_optype = le16_to_cpu(fsec_entry.optype);

 if (img_optype != 0xFFFF)
  return img_optype;

 switch (img_type) {
 case 137:
  img_optype = OPTYPE_ISCSI_ACTIVE;
  break;
 case 139:
  img_optype = OPTYPE_REDBOOT;
  break;
 case 132:
  img_optype = OPTYPE_BIOS;
  break;
 case 131:
  img_optype = OPTYPE_PXE_BIOS;
  break;
 case 133:
  img_optype = OPTYPE_FCOE_BIOS;
  break;
 case 138:
  img_optype = OPTYPE_ISCSI_BACKUP;
  break;
 case 134:
  img_optype = OPTYPE_NCSI_FW;
  break;
 case 135:
  img_optype = OPTYPE_FLASHISM_JUMPVECTOR;
  break;
 case 136:
  img_optype = OPTYPE_SH_PHY_FW;
  break;
 case 129:
  img_optype = OPTYPE_REDBOOT_DIR;
  break;
 case 130:
  img_optype = OPTYPE_REDBOOT_CONFIG;
  break;
 case 128:
  img_optype = OPTYPE_UFI_DIR;
  break;
 default:
  break;
 }

 return img_optype;
}
