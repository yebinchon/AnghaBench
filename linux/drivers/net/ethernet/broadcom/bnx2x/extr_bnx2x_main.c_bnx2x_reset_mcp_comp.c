
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E1 (struct bnx2x*) ;
 int bnx2x_clp_reset_done (struct bnx2x*,int ) ;
 int bnx2x_init_shmem (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_reset_mcp_comp(struct bnx2x *bp, u32 magic_val)
{
 int rc = bnx2x_init_shmem(bp);


 if (!CHIP_IS_E1(bp))
  bnx2x_clp_reset_done(bp, magic_val);

 return rc;
}
