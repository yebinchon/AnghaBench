
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msix_entry {int entry; } ;
struct hinic_eq {int type; int hwif; int q_id; struct msix_entry msix_entry; } ;
typedef enum hinic_eq_type { ____Placeholder_hinic_eq_type } hinic_eq_type ;


 int DMA_ATTR ;
 int DMA_ATTR_AEQ_DEFAULT ;
 int DMA_ATTR_CEQ_DEFAULT ;
 int EQ_INT_MODE_ARMED ;
 int HINIC_AEQ ;
 int HINIC_AEQ_CTRL_0_CLEAR (int,int ) ;
 int HINIC_AEQ_CTRL_0_SET (int ,int ) ;
 int HINIC_CEQ ;
 int HINIC_CEQ_CTRL_0_CLEAR (int,int ) ;
 int HINIC_CEQ_CTRL_0_SET (int ,int ) ;
 int HINIC_CSR_AEQ_CTRL_0_ADDR (int ) ;
 int HINIC_CSR_CEQ_CTRL_0_ADDR (int ) ;
 int HINIC_HWIF_PCI_INTF (int ) ;
 int INTR_IDX ;
 int INTR_MODE ;
 int INT_IDX ;
 int INT_MODE ;
 int KICK_THRESH ;
 int PCI_INTF_IDX ;
 int THRESH_CEQ_DEFAULT ;
 int hinic_hwif_read_reg (int ,int) ;
 int hinic_hwif_write_reg (int ,int,int) ;

__attribute__((used)) static void set_ctrl0(struct hinic_eq *eq)
{
 struct msix_entry *msix_entry = &eq->msix_entry;
 enum hinic_eq_type type = eq->type;
 u32 addr, val, ctrl0;

 if (type == HINIC_AEQ) {

  addr = HINIC_CSR_AEQ_CTRL_0_ADDR(eq->q_id);

  val = hinic_hwif_read_reg(eq->hwif, addr);

  val = HINIC_AEQ_CTRL_0_CLEAR(val, INT_IDX) &
        HINIC_AEQ_CTRL_0_CLEAR(val, DMA_ATTR) &
        HINIC_AEQ_CTRL_0_CLEAR(val, PCI_INTF_IDX) &
        HINIC_AEQ_CTRL_0_CLEAR(val, INT_MODE);

  ctrl0 = HINIC_AEQ_CTRL_0_SET(msix_entry->entry, INT_IDX) |
   HINIC_AEQ_CTRL_0_SET(DMA_ATTR_AEQ_DEFAULT, DMA_ATTR) |
   HINIC_AEQ_CTRL_0_SET(HINIC_HWIF_PCI_INTF(eq->hwif),
          PCI_INTF_IDX) |
   HINIC_AEQ_CTRL_0_SET(EQ_INT_MODE_ARMED, INT_MODE);

  val |= ctrl0;

  hinic_hwif_write_reg(eq->hwif, addr, val);
 } else if (type == HINIC_CEQ) {

  addr = HINIC_CSR_CEQ_CTRL_0_ADDR(eq->q_id);

  val = hinic_hwif_read_reg(eq->hwif, addr);

  val = HINIC_CEQ_CTRL_0_CLEAR(val, INTR_IDX) &
        HINIC_CEQ_CTRL_0_CLEAR(val, DMA_ATTR) &
        HINIC_CEQ_CTRL_0_CLEAR(val, KICK_THRESH) &
        HINIC_CEQ_CTRL_0_CLEAR(val, PCI_INTF_IDX) &
        HINIC_CEQ_CTRL_0_CLEAR(val, INTR_MODE);

  ctrl0 = HINIC_CEQ_CTRL_0_SET(msix_entry->entry, INTR_IDX) |
   HINIC_CEQ_CTRL_0_SET(DMA_ATTR_CEQ_DEFAULT, DMA_ATTR) |
   HINIC_CEQ_CTRL_0_SET(THRESH_CEQ_DEFAULT, KICK_THRESH) |
   HINIC_CEQ_CTRL_0_SET(HINIC_HWIF_PCI_INTF(eq->hwif),
          PCI_INTF_IDX) |
   HINIC_CEQ_CTRL_0_SET(EQ_INT_MODE_ARMED, INTR_MODE);

  val |= ctrl0;

  hinic_hwif_write_reg(eq->hwif, addr, val);
 }
}
