
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int doorbells; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int) ;
 int EINVAL ;
 scalar_t__ GOOD_ME_REG (int) ;
 int ME_REG_VF_NUM_MASK ;
 int ME_REG_VF_NUM_SHIFT ;
 int msleep (int) ;
 int readl (int ) ;

__attribute__((used)) static int bnx2x_get_vf_id(struct bnx2x *bp, u32 *vf_id)
{
 u32 me_reg;
 int tout = 10, interval = 100;

 do {

  me_reg = readl(bp->doorbells);
  if (GOOD_ME_REG(me_reg))
   break;

  msleep(interval);

  BNX2X_ERR("Invalid ME register value: 0x%08x\n. Is pf driver up?",
     me_reg);
 } while (tout-- > 0);

 if (!GOOD_ME_REG(me_reg)) {
  BNX2X_ERR("Invalid ME register value: 0x%08x\n", me_reg);
  return -EINVAL;
 }

 DP(BNX2X_MSG_IOV, "valid ME register value: 0x%08x\n", me_reg);

 *vf_id = (me_reg & ME_REG_VF_NUM_MASK) >> ME_REG_VF_NUM_SHIFT;

 return 0;
}
