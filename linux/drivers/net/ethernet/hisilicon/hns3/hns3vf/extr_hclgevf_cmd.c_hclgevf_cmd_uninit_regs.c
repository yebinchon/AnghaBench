
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_hw {int dummy; } ;


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
 int hclgevf_write_dev (struct hclgevf_hw*,int ,int ) ;

__attribute__((used)) static void hclgevf_cmd_uninit_regs(struct hclgevf_hw *hw)
{
 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_BASEADDR_L_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_BASEADDR_H_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_DEPTH_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_HEAD_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_TAIL_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_BASEADDR_L_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_BASEADDR_H_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_DEPTH_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_HEAD_REG, 0);
 hclgevf_write_dev(hw, HCLGEVF_NIC_CRQ_TAIL_REG, 0);
}
