
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {size_t ict_index; scalar_t__* ict_tbl; } ;
struct iwl_trans {int dev; } ;


 int ICT_COUNT ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,size_t,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int le32_to_cpu (scalar_t__) ;
 int trace_iwlwifi_dev_ict_read (int ,size_t,int) ;
 int trace_iwlwifi_dev_irq (int ) ;

__attribute__((used)) static u32 iwl_pcie_int_cause_ict(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 inta;
 u32 val = 0;
 u32 read;

 trace_iwlwifi_dev_irq(trans->dev);




 read = le32_to_cpu(trans_pcie->ict_tbl[trans_pcie->ict_index]);
 trace_iwlwifi_dev_ict_read(trans->dev, trans_pcie->ict_index, read);
 if (!read)
  return 0;





 do {
  val |= read;
  IWL_DEBUG_ISR(trans, "ICT index %d value 0x%08X\n",
    trans_pcie->ict_index, read);
  trans_pcie->ict_tbl[trans_pcie->ict_index] = 0;
  trans_pcie->ict_index =
   ((trans_pcie->ict_index + 1) & (ICT_COUNT - 1));

  read = le32_to_cpu(trans_pcie->ict_tbl[trans_pcie->ict_index]);
  trace_iwlwifi_dev_ict_read(trans->dev, trans_pcie->ict_index,
        read);
 } while (read);


 if (val == 0xffffffff)
  val = 0;
 if (val & 0xC0000)
  val |= 0x8000;

 inta = (0xff & val) | ((0xff00 & val) << 16);
 return inta;
}
