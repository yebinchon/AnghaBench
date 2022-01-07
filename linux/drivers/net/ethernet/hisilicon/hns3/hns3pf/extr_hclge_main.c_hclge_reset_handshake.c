
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_dev {int hw; } ;


 int HCLGE_NIC_CSQ_DEPTH_REG ;
 int HCLGE_NIC_SW_RST_RDY ;
 int hclge_read_dev (int *,int ) ;
 int hclge_write_dev (int *,int ,int ) ;

__attribute__((used)) static void hclge_reset_handshake(struct hclge_dev *hdev, bool enable)
{
 u32 reg_val;

 reg_val = hclge_read_dev(&hdev->hw, HCLGE_NIC_CSQ_DEPTH_REG);
 if (enable)
  reg_val |= HCLGE_NIC_SW_RST_RDY;
 else
  reg_val &= ~HCLGE_NIC_SW_RST_RDY;

 hclge_write_dev(&hdev->hw, HCLGE_NIC_CSQ_DEPTH_REG, reg_val);
}
