
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclgevf_dev {int hw; } ;


 int HCLGEVF_NIC_CSQ_DEPTH_REG ;
 int HCLGEVF_NIC_SW_RST_RDY ;
 int hclgevf_read_dev (int *,int ) ;
 int hclgevf_write_dev (int *,int ,int ) ;

__attribute__((used)) static void hclgevf_reset_handshake(struct hclgevf_dev *hdev, bool enable)
{
 u32 reg_val;

 reg_val = hclgevf_read_dev(&hdev->hw, HCLGEVF_NIC_CSQ_DEPTH_REG);
 if (enable)
  reg_val |= HCLGEVF_NIC_SW_RST_RDY;
 else
  reg_val &= ~HCLGEVF_NIC_SW_RST_RDY;

 hclgevf_write_dev(&hdev->hw, HCLGEVF_NIC_CSQ_DEPTH_REG,
     reg_val);
}
