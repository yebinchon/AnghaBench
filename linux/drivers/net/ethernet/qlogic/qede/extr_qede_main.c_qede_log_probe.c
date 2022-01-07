
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct qed_dev_info {int fw_major; int fw_minor; int fw_rev; int fw_eng; int mfw_rev; int mbi_version; } ;
struct TYPE_5__ {struct qed_dev_info common; } ;
struct qede_dev {TYPE_4__* ndev; TYPE_3__* pdev; TYPE_1__ dev_info; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int devfn; TYPE_2__* bus; } ;
struct TYPE_6__ {int number; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int QEDE_FW_VER_STR_SIZE ;
 int QED_MBI_VERSION_0_MASK ;
 int QED_MBI_VERSION_0_OFFSET ;
 int QED_MBI_VERSION_1_MASK ;
 int QED_MBI_VERSION_1_OFFSET ;
 int QED_MBI_VERSION_2_MASK ;
 int QED_MBI_VERSION_2_OFFSET ;
 int QED_MFW_VERSION_0_MASK ;
 int QED_MFW_VERSION_0_OFFSET ;
 int QED_MFW_VERSION_1_MASK ;
 int QED_MFW_VERSION_1_OFFSET ;
 int QED_MFW_VERSION_2_MASK ;
 int QED_MFW_VERSION_2_OFFSET ;
 int QED_MFW_VERSION_3_MASK ;
 int QED_MFW_VERSION_3_OFFSET ;
 int pr_info (char*,int ,int ,int ,int *,int ) ;
 int snprintf (int *,size_t,char*,int,int,int,...) ;
 int strlen (int *) ;

__attribute__((used)) static void qede_log_probe(struct qede_dev *edev)
{
 struct qed_dev_info *p_dev_info = &edev->dev_info.common;
 u8 buf[QEDE_FW_VER_STR_SIZE];
 size_t left_size;

 snprintf(buf, QEDE_FW_VER_STR_SIZE,
   "Storm FW %d.%d.%d.%d, Management FW %d.%d.%d.%d",
   p_dev_info->fw_major, p_dev_info->fw_minor, p_dev_info->fw_rev,
   p_dev_info->fw_eng,
   (p_dev_info->mfw_rev & QED_MFW_VERSION_3_MASK) >>
   QED_MFW_VERSION_3_OFFSET,
   (p_dev_info->mfw_rev & QED_MFW_VERSION_2_MASK) >>
   QED_MFW_VERSION_2_OFFSET,
   (p_dev_info->mfw_rev & QED_MFW_VERSION_1_MASK) >>
   QED_MFW_VERSION_1_OFFSET,
   (p_dev_info->mfw_rev & QED_MFW_VERSION_0_MASK) >>
   QED_MFW_VERSION_0_OFFSET);

 left_size = QEDE_FW_VER_STR_SIZE - strlen(buf);
 if (p_dev_info->mbi_version && left_size)
  snprintf(buf + strlen(buf), left_size,
    " [MBI %d.%d.%d]",
    (p_dev_info->mbi_version & QED_MBI_VERSION_2_MASK) >>
    QED_MBI_VERSION_2_OFFSET,
    (p_dev_info->mbi_version & QED_MBI_VERSION_1_MASK) >>
    QED_MBI_VERSION_1_OFFSET,
    (p_dev_info->mbi_version & QED_MBI_VERSION_0_MASK) >>
    QED_MBI_VERSION_0_OFFSET);

 pr_info("qede %02x:%02x.%02x: %s [%s]\n", edev->pdev->bus->number,
  PCI_SLOT(edev->pdev->devfn), PCI_FUNC(edev->pdev->devfn),
  buf, edev->ndev->name);
}
