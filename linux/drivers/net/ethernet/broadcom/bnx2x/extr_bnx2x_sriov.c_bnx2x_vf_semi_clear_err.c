
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int CSEM_REG_VFPF_ERR_NUM ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int TSEM_REG_VFPF_ERR_NUM ;
 int USEM_REG_VFPF_ERR_NUM ;
 int XSEM_REG_VFPF_ERR_NUM ;

__attribute__((used)) static void bnx2x_vf_semi_clear_err(struct bnx2x *bp, u8 abs_vfid)
{
 REG_WR(bp, TSEM_REG_VFPF_ERR_NUM, abs_vfid);
 REG_WR(bp, USEM_REG_VFPF_ERR_NUM, abs_vfid);
 REG_WR(bp, CSEM_REG_VFPF_ERR_NUM, abs_vfid);
 REG_WR(bp, XSEM_REG_VFPF_ERR_NUM, abs_vfid);
}
