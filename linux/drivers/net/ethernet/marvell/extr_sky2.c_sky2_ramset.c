
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sky2_hw {int dummy; } ;


 scalar_t__ Q_R1 ;
 scalar_t__ Q_R2 ;
 int RB_ADDR (scalar_t__,int ) ;
 int RB_CTRL ;
 int RB_ENA_OP_MD ;
 int RB_ENA_STFWD ;
 int RB_END ;
 int RB_RP ;
 int RB_RST_CLR ;
 int RB_RX_LTHP ;
 int RB_RX_LTPP ;
 int RB_RX_UTHP ;
 int RB_RX_UTPP ;
 int RB_START ;
 int RB_WP ;
 int sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_ramset(struct sky2_hw *hw, u16 q, u32 start, u32 space)
{
 u32 end;


 start *= 1024/8;
 space *= 1024/8;
 end = start + space - 1;

 sky2_write8(hw, RB_ADDR(q, RB_CTRL), RB_RST_CLR);
 sky2_write32(hw, RB_ADDR(q, RB_START), start);
 sky2_write32(hw, RB_ADDR(q, RB_END), end);
 sky2_write32(hw, RB_ADDR(q, RB_WP), start);
 sky2_write32(hw, RB_ADDR(q, RB_RP), start);

 if (q == Q_R1 || q == Q_R2) {
  u32 tp = space - space/4;





  sky2_write32(hw, RB_ADDR(q, RB_RX_UTHP), tp);
  sky2_write32(hw, RB_ADDR(q, RB_RX_LTHP), space/2);

  tp = space - 8192/8;
  sky2_write32(hw, RB_ADDR(q, RB_RX_UTPP), tp);
  sky2_write32(hw, RB_ADDR(q, RB_RX_LTPP), space/4);
 } else {



  sky2_write8(hw, RB_ADDR(q, RB_CTRL), RB_ENA_STFWD);
 }

 sky2_write8(hw, RB_ADDR(q, RB_CTRL), RB_ENA_OP_MD);
 sky2_read8(hw, RB_ADDR(q, RB_CTRL));
}
