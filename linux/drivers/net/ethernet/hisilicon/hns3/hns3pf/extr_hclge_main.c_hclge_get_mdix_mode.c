
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int ETH_TP_MDI ;
 int ETH_TP_MDI_AUTO ;
 int ETH_TP_MDI_INVALID ;
 int ETH_TP_MDI_X ;
 int HCLGE_PHY_CSC_REG ;
 int HCLGE_PHY_CSS_REG ;
 int HCLGE_PHY_MDIX_CTRL_M ;
 int HCLGE_PHY_MDIX_CTRL_S ;
 int HCLGE_PHY_MDIX_STATUS_B ;
 int HCLGE_PHY_PAGE_COPPER ;
 int HCLGE_PHY_PAGE_MDIX ;
 int HCLGE_PHY_PAGE_REG ;
 int HCLGE_PHY_SPEED_DUP_RESOLVE_B ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hnae3_get_bit (unsigned int,int ) ;
 int hnae3_get_field (unsigned int,int ,int ) ;
 unsigned int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void hclge_get_mdix_mode(struct hnae3_handle *handle,
    u8 *tp_mdix_ctrl, u8 *tp_mdix)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 struct phy_device *phydev = hdev->hw.mac.phydev;
 int mdix_ctrl, mdix, is_resolved;
 unsigned int retval;

 if (!phydev) {
  *tp_mdix_ctrl = ETH_TP_MDI_INVALID;
  *tp_mdix = ETH_TP_MDI_INVALID;
  return;
 }

 phy_write(phydev, HCLGE_PHY_PAGE_REG, HCLGE_PHY_PAGE_MDIX);

 retval = phy_read(phydev, HCLGE_PHY_CSC_REG);
 mdix_ctrl = hnae3_get_field(retval, HCLGE_PHY_MDIX_CTRL_M,
        HCLGE_PHY_MDIX_CTRL_S);

 retval = phy_read(phydev, HCLGE_PHY_CSS_REG);
 mdix = hnae3_get_bit(retval, HCLGE_PHY_MDIX_STATUS_B);
 is_resolved = hnae3_get_bit(retval, HCLGE_PHY_SPEED_DUP_RESOLVE_B);

 phy_write(phydev, HCLGE_PHY_PAGE_REG, HCLGE_PHY_PAGE_COPPER);

 switch (mdix_ctrl) {
 case 0x0:
  *tp_mdix_ctrl = ETH_TP_MDI;
  break;
 case 0x1:
  *tp_mdix_ctrl = ETH_TP_MDI_X;
  break;
 case 0x3:
  *tp_mdix_ctrl = ETH_TP_MDI_AUTO;
  break;
 default:
  *tp_mdix_ctrl = ETH_TP_MDI_INVALID;
  break;
 }

 if (!is_resolved)
  *tp_mdix = ETH_TP_MDI_INVALID;
 else if (mdix)
  *tp_mdix = ETH_TP_MDI_X;
 else
  *tp_mdix = ETH_TP_MDI;
}
