
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct rvu {int dummy; } ;


 int NIX_AF_MDQX_PARENT (int ) ;
 int NIX_AF_TL2X_PARENT (int ) ;
 int NIX_AF_TL3X_PARENT (int ) ;
 int NIX_AF_TL4X_PARENT (int ) ;
 int NIX_TXSCH_LVL_TL1 ;
 int NIX_TXSCH_LVL_TL2 ;
 int NIX_TXSCH_LVL_TL3 ;
 int NIX_TXSCH_LVL_TL4 ;
 int TXSCHQ_HWREGMAP ;
 int TXSCHQ_IDX (int,int ) ;
 int TXSCHQ_IDX_SHIFT ;
 int is_valid_txschq (struct rvu*,int,int,int,int) ;
 int rvu_check_valid_reg (int ,int,int) ;

__attribute__((used)) static bool is_txschq_config_valid(struct rvu *rvu, u16 pcifunc, int blkaddr,
       int lvl, u64 reg, u64 regval)
{
 u64 regbase = reg & 0xFFFF;
 u16 schq, parent;

 if (!rvu_check_valid_reg(TXSCHQ_HWREGMAP, lvl, reg))
  return 0;

 schq = TXSCHQ_IDX(reg, TXSCHQ_IDX_SHIFT);

 if (!is_valid_txschq(rvu, blkaddr, lvl, pcifunc, schq))
  return 0;

 parent = (regval >> 16) & 0x1FF;

 if (regbase == NIX_AF_MDQX_PARENT(0) &&
     !is_valid_txschq(rvu, blkaddr, NIX_TXSCH_LVL_TL4, pcifunc, parent))
  return 0;


 if (regbase == NIX_AF_TL4X_PARENT(0) &&
     !is_valid_txschq(rvu, blkaddr, NIX_TXSCH_LVL_TL3, pcifunc, parent))
  return 0;


 if (regbase == NIX_AF_TL3X_PARENT(0) &&
     !is_valid_txschq(rvu, blkaddr, NIX_TXSCH_LVL_TL2, pcifunc, parent))
  return 0;


 if (regbase == NIX_AF_TL2X_PARENT(0) &&
     !is_valid_txschq(rvu, blkaddr, NIX_TXSCH_LVL_TL1, pcifunc, parent))
  return 0;

 return 1;
}
