
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_hw {int dummy; } ;


 int HCLGE_NIC_CRQ_BASEADDR_H_REG ;
 int HCLGE_NIC_CRQ_BASEADDR_L_REG ;
 int HCLGE_NIC_CRQ_DEPTH_REG ;
 int HCLGE_NIC_CRQ_HEAD_REG ;
 int HCLGE_NIC_CRQ_TAIL_REG ;
 int HCLGE_NIC_CSQ_BASEADDR_H_REG ;
 int HCLGE_NIC_CSQ_BASEADDR_L_REG ;
 int HCLGE_NIC_CSQ_DEPTH_REG ;
 int HCLGE_NIC_CSQ_HEAD_REG ;
 int HCLGE_NIC_CSQ_TAIL_REG ;
 int hclge_write_dev (struct hclge_hw*,int ,int ) ;

__attribute__((used)) static void hclge_cmd_uninit_regs(struct hclge_hw *hw)
{
 hclge_write_dev(hw, HCLGE_NIC_CSQ_BASEADDR_L_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CSQ_BASEADDR_H_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CSQ_DEPTH_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CSQ_HEAD_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CSQ_TAIL_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CRQ_BASEADDR_L_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CRQ_BASEADDR_H_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CRQ_DEPTH_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CRQ_HEAD_REG, 0);
 hclge_write_dev(hw, HCLGE_NIC_CRQ_TAIL_REG, 0);
}
