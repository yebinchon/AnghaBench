
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct skge_port {int dma; int mem; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct skge_element {int desc; } ;


 int B0_CTST ;
 int CSR_CLR_RESET ;
 int CS_BUS_CLOCK ;
 int CS_BUS_SLOT_SZ ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int Q_DA_H ;
 int Q_DA_L ;
 int Q_F ;
 int skge_read16 (struct skge_hw*,int ) ;
 int skge_write32 (struct skge_hw*,int ,int) ;

__attribute__((used)) static void skge_qset(struct skge_port *skge, u16 q,
        const struct skge_element *e)
{
 struct skge_hw *hw = skge->hw;
 u32 watermark = 0x600;
 u64 base = skge->dma + (e->desc - skge->mem);


 if ((skge_read16(hw, B0_CTST) & (CS_BUS_CLOCK | CS_BUS_SLOT_SZ)) == 0)
  watermark /= 2;

 skge_write32(hw, Q_ADDR(q, Q_CSR), CSR_CLR_RESET);
 skge_write32(hw, Q_ADDR(q, Q_F), watermark);
 skge_write32(hw, Q_ADDR(q, Q_DA_H), (u32)(base >> 32));
 skge_write32(hw, Q_ADDR(q, Q_DA_L), (u32)base);
}
