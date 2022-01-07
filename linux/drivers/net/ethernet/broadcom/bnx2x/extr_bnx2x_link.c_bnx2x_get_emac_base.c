
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int GRCBASE_EMAC0 ;
 int GRCBASE_EMAC1 ;
 int NIG_REG_PORT_SWAP ;
 int REG_RD (struct bnx2x*,int ) ;






__attribute__((used)) static u32 bnx2x_get_emac_base(struct bnx2x *bp,
          u32 mdc_mdio_access, u8 port)
{
 u32 emac_base = 0;
 switch (mdc_mdio_access) {
 case 129:
  break;
 case 131:
  if (REG_RD(bp, NIG_REG_PORT_SWAP))
   emac_base = GRCBASE_EMAC1;
  else
   emac_base = GRCBASE_EMAC0;
  break;
 case 130:
  if (REG_RD(bp, NIG_REG_PORT_SWAP))
   emac_base = GRCBASE_EMAC0;
  else
   emac_base = GRCBASE_EMAC1;
  break;
 case 132:
  emac_base = (port) ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
  break;
 case 128:
  emac_base = (port) ? GRCBASE_EMAC0 : GRCBASE_EMAC1;
  break;
 default:
  break;
 }
 return emac_base;

}
