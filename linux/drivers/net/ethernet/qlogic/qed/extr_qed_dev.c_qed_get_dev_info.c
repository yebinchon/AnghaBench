
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rel_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {int vendor_id; int device_id; int chip_num; int chip_rev; int num_hwfns; int chip_bond_id; int chip_metal; int hwfns; int type; int pdev; } ;


 int CHIP_BOND_ID ;
 int CHIP_METAL ;
 int CHIP_REV ;
 int DP_INFO (int ,char*,char*,int,int,int,int,int,int) ;
 int DP_NOTICE (struct qed_hwfn*,char*,...) ;
 int EBUSY ;
 int MASK_FIELD (int ,int) ;
 int MISCS_REG_CHIP_METAL ;
 int MISCS_REG_CHIP_NUM ;
 int MISCS_REG_CHIP_REV ;
 int MISCS_REG_CHIP_TEST_REG ;
 int MISCS_REG_CMT_ENABLED_FOR_PAIR ;
 int PCI_DEVICE_ID ;
 int PCI_VENDOR_ID ;
 int QED_DEV_ID_MASK ;


 int QED_DEV_TYPE_AH ;
 int QED_DEV_TYPE_BB ;
 scalar_t__ QED_IS_BB (struct qed_dev*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static int qed_get_dev_info(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u16 device_id_mask;
 u32 tmp;


 pci_read_config_word(cdev->pdev, PCI_VENDOR_ID, &cdev->vendor_id);
 pci_read_config_word(cdev->pdev, PCI_DEVICE_ID, &cdev->device_id);


 device_id_mask = cdev->device_id & QED_DEV_ID_MASK;
 switch (device_id_mask) {
 case 128:
  cdev->type = QED_DEV_TYPE_BB;
  break;
 case 129:
  cdev->type = QED_DEV_TYPE_AH;
  break;
 default:
  DP_NOTICE(p_hwfn, "Unknown device id 0x%x\n", cdev->device_id);
  return -EBUSY;
 }

 cdev->chip_num = (u16)qed_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_NUM);
 cdev->chip_rev = (u16)qed_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_REV);

 MASK_FIELD(CHIP_REV, cdev->chip_rev);


 tmp = qed_rd(p_hwfn, p_ptt, MISCS_REG_CMT_ENABLED_FOR_PAIR);

 if (tmp & (1 << p_hwfn->rel_pf_id)) {
  DP_NOTICE(cdev->hwfns, "device in CMT mode\n");
  cdev->num_hwfns = 2;
 } else {
  cdev->num_hwfns = 1;
 }

 cdev->chip_bond_id = qed_rd(p_hwfn, p_ptt,
        MISCS_REG_CHIP_TEST_REG) >> 4;
 MASK_FIELD(CHIP_BOND_ID, cdev->chip_bond_id);
 cdev->chip_metal = (u16)qed_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_METAL);
 MASK_FIELD(CHIP_METAL, cdev->chip_metal);

 DP_INFO(cdev->hwfns,
  "Chip details - %s %c%d, Num: %04x Rev: %04x Bond id: %04x Metal: %04x\n",
  QED_IS_BB(cdev) ? "BB" : "AH",
  'A' + cdev->chip_rev,
  (int)cdev->chip_metal,
  cdev->chip_num, cdev->chip_rev,
  cdev->chip_bond_id, cdev->chip_metal);

 return 0;
}
