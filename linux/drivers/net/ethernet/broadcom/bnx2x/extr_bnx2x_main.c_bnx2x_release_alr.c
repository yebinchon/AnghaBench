
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int MCP_REG_MCPR_ACCESS_LOCK ;
 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_release_alr(struct bnx2x *bp)
{
 REG_WR(bp, MCP_REG_MCPR_ACCESS_LOCK, 0);
}
