
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclgevf_hw {int dummy; } ;
struct hclgevf_dev {struct hclgevf_hw hw; } ;
struct hclgevf_cmq_ring {scalar_t__ flag; int desc_dma_addr; int desc_num; struct hclgevf_dev* dev; } ;


 int HCLGEVF_NIC_CMQ_DESC_NUM_S ;
 int HCLGEVF_NIC_CRQ_BASEADDR_H_REG ;
 int HCLGEVF_NIC_CRQ_BASEADDR_L_REG ;
 int HCLGEVF_NIC_CRQ_DEPTH_REG ;
 int HCLGEVF_NIC_CRQ_HEAD_REG ;
 int HCLGEVF_NIC_CRQ_TAIL_REG ;
 int HCLGEVF_NIC_CSQ_BASEADDR_H_REG ;
 int HCLGEVF_NIC_CSQ_BASEADDR_L_REG ;
 int HCLGEVF_NIC_CSQ_DEPTH_REG ;
 int HCLGEVF_NIC_CSQ_HEAD_REG ;
 int HCLGEVF_NIC_CSQ_TAIL_REG ;
 int HCLGEVF_NIC_SW_RST_RDY ;
 scalar_t__ HCLGEVF_TYPE_CSQ ;
 int hclgevf_read_dev (struct hclgevf_hw*,int ) ;
 int hclgevf_write_dev (struct hclgevf_hw*,int ,int) ;

__attribute__((used)) static void hclgevf_cmd_config_regs(struct hclgevf_cmq_ring *ring)
{
 struct hclgevf_dev *hdev = ring->dev;
 struct hclgevf_hw *hw = &hdev->hw;
 u32 reg_val;

 if (ring->flag == HCLGEVF_TYPE_CSQ) {
  reg_val = (u32)ring->desc_dma_addr;
  hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_BASEADDR_L_REG, reg_val);
  reg_val = (u32)((ring->desc_dma_addr >> 31) >> 1);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_BASEADDR_H_REG, reg_val);

  reg_val = hclgevf_read_dev(hw, HCLGEVF_NIC_CSQ_DEPTH_REG);
  reg_val &= HCLGEVF_NIC_SW_RST_RDY;
  reg_val |= (ring->desc_num >> HCLGEVF_NIC_CMQ_DESC_NUM_S);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_DEPTH_REG, reg_val);

  hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_HEAD_REG, 0);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_TAIL_REG, 0);
 } else {
  reg_val = (u32)ring->desc_dma_addr;
  hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_BASEADDR_L_REG, reg_val);
  reg_val = (u32)((ring->desc_dma_addr >> 31) >> 1);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_BASEADDR_H_REG, reg_val);

  reg_val = (ring->desc_num >> HCLGEVF_NIC_CMQ_DESC_NUM_S);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_DEPTH_REG, reg_val);

  hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_HEAD_REG, 0);
  hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_TAIL_REG, 0);
 }
}
