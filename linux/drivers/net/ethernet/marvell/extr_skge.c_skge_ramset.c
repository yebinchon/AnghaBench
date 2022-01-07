
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct skge_hw {int dummy; } ;


 scalar_t__ Q_R1 ;
 scalar_t__ Q_R2 ;
 int RB_ADDR (scalar_t__,int ) ;
 int RB_CTRL ;
 int RB_ENA_OP_MD ;
 int RB_ENA_STFWD ;
 int RB_END ;
 int RB_RP ;
 int RB_RST_CLR ;
 int RB_RX_LTPP ;
 int RB_RX_UTPP ;
 int RB_START ;
 int RB_WP ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void skge_ramset(struct skge_hw *hw, u16 q, u32 start, size_t len)
{
 u32 end;

 start /= 8;
 len /= 8;
 end = start + len - 1;

 skge_write8(hw, RB_ADDR(q, RB_CTRL), RB_RST_CLR);
 skge_write32(hw, RB_ADDR(q, RB_START), start);
 skge_write32(hw, RB_ADDR(q, RB_WP), start);
 skge_write32(hw, RB_ADDR(q, RB_RP), start);
 skge_write32(hw, RB_ADDR(q, RB_END), end);

 if (q == Q_R1 || q == Q_R2) {

  skge_write32(hw, RB_ADDR(q, RB_RX_UTPP),
        start + (2*len)/3);
  skge_write32(hw, RB_ADDR(q, RB_RX_LTPP),
        start + (len/3));
 } else {



  skge_write8(hw, RB_ADDR(q, RB_CTRL), RB_ENA_STFWD);
 }

 skge_write8(hw, RB_ADDR(q, RB_CTRL), RB_ENA_OP_MD);
}
